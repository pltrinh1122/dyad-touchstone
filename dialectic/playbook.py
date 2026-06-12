#!/usr/bin/env python3
"""dyad-touchstone — the falsifier (symbolic half of the G/V planning pair).

This is NOT a planner. It cannot tell you the next best action. It is a
Popperian *veto*: given the activity DAG (dag.yaml), it queries the substrate
THIS RUN to derive done-ness (never trusting a stored flag), then it can only:

  * REFUTE the graph's structure        (cycle / dangling edge)
  * REFUTE a proposed transition        (not a terminal / already done / blocked)
  * surface the qualifying-terminal FRONTIER and then REFUSE to choose

What it deliberately does NOT do (these are neural / dyadic, not mechanical):
  * decide ATOMICITY (will this leaf spawn children?) — a claim about the future
  * SELECT among the frontier (wu-wei: minimum force / maximum unlock)

A pass here means "un-refuted", never "verified". Positive trust comes only
from survival across ledger cycles, not from a green run.

Usage:
    python3 dialectic/playbook.py              # show frontier (refuses to pick)
    python3 dialectic/playbook.py propose <id> # permit / VETO one transition
"""
import sys
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parent.parent
DAG = yaml.safe_load((REPO / "dialectic" / "dag.yaml").read_text())
NODES = DAG["nodes"]


# --- substrate queries: the only predicates the falsifier may execute --------
def _file_exists(path):
    return (REPO / path).exists()


def _file_contains(path, pattern):
    p = REPO / path
    return p.exists() and pattern in p.read_text()


def query_done_when(spec):
    """Re-derive a terminal's done-ness by reading reality this run."""
    (kind, arg), = spec.items()
    if kind == "file_exists":
        return _file_exists(arg["path"])
    if kind == "file_contains":
        return _file_contains(arg["path"], arg["pattern"])
    raise ValueError(f"unknown done_when predicate: {kind}")


# --- structural refutation (offline checks on the graph itself) --------------
def refute_structure():
    refutations = []
    ids = set(NODES)
    for nid, n in NODES.items():
        for ref in n.get("deps", []) + n.get("children", []):
            if ref not in ids:
                refutations.append(f"{nid} -> {ref}: dangling edge (no such node)")
    # cycle detection over deps + children
    WHITE, GREY, BLACK = 0, 1, 2
    color = {nid: WHITE for nid in NODES}

    def visit(nid, stack):
        color[nid] = GREY
        for ref in NODES[nid].get("deps", []) + NODES[nid].get("children", []):
            if ref not in NODES:
                continue
            if color[ref] == GREY:
                refutations.append("cycle: " + " -> ".join(stack + [ref]))
            elif color[ref] == WHITE:
                visit(ref, stack + [ref])
        color[nid] = BLACK

    for nid in NODES:
        if color[nid] == WHITE:
            visit(nid, [nid])
    return refutations


# --- done-ness (queried, recursive for goals) --------------------------------
def is_done(nid, _seen=None):
    n = NODES[nid]
    if n["kind"] == "goal":
        return all(is_done(c) for c in n["children"])
    return query_done_when(n["done_when"])


def status(nid):
    n = NODES[nid]
    if n["kind"] == "goal":
        return "goal"
    if n["kind"] == "rack":
        # carried freight: dormant, NEVER on the frontier; discharge still re-derived
        return "discharged" if query_done_when(n["done_when"]) else "carried"
    if is_done(nid):
        return "done"
    unmet = [d for d in n.get("deps", []) if not is_done(d)]
    return f"blocked(by {','.join(unmet)})" if unmet else "READY"


def frontier():
    """Qualifying terminals: leaf AND not done AND every dep done."""
    return [nid for nid, n in NODES.items()
            if n["kind"] == "terminal" and status(nid) == "READY"]


# --- the transition guard (the veto) -----------------------------------------
def propose(nid):
    if nid not in NODES:
        return False, f"VETO: no such node '{nid}'"
    n = NODES[nid]
    if n["kind"] == "rack":
        return False, (f"VETO: '{nid}' is racked freight (carried, dormant) — "
                       f"un-rack it (promote rack->terminal + attach deps) before proposing")
    if n["kind"] != "terminal":
        return False, f"VETO: '{nid}' is a goal, not a terminal — goals are never executed directly"
    st = status(nid)
    if st == "done":
        return False, f"VETO: '{nid}' is already done (queried this run)"
    if st.startswith("blocked"):
        return False, f"VETO: '{nid}' is {st} — its deps are not satisfied"
    return True, (f"PERMIT: '{nid}' is a ready terminal — transition is legal. "
                  f"(Un-refuted, NOT verified. Atomicity unchecked: neural/dyadic.)")


def main():
    refs = refute_structure()
    if refs:
        print("STRUCTURAL REFUTATION:")
        for r in refs:
            print("  ✗", r)
        sys.exit(1)

    if len(sys.argv) >= 3 and sys.argv[1] == "propose":
        ok, msg = propose(sys.argv[2])
        print(msg)
        sys.exit(0 if ok else 2)

    print("Activity DAG — done-ness re-derived by querying substrate this run:\n")
    for nid, n in NODES.items():
        if n["kind"] == "terminal":
            print(f"  {nid:4} {status(nid):20} {n['label']}")
    f = frontier()
    print("\nQUALIFYING-TERMINAL FRONTIER (ready, un-refuted):")
    for nid in f:
        print(f"  → {nid}  {NODES[nid]['label']}")
    if not f:
        undone = [nid for nid, n in NODES.items()
                  if n["kind"] == "terminal" and not is_done(nid)]
        print("  (none)  DEADLOCK" if undone else "  (none)  all terminals done")
    racks = [nid for nid, n in NODES.items() if n["kind"] == "rack"]
    if racks:
        # LIFO stack: dag.yaml file-order IS push-order (append-only; never reorder).
        # Render top->bottom so the TOP (last pushed) reads first; bare refine/rub/un-rack
        # ops default to it unless a node is named (DYAD.md Rack-protocol, cycle-24).
        print("\nRACK — LIFO stack (carried freight; durable, dormant; NOT on the climb).")
        print("  top = last pushed; bare refine/rub/un-rack default to TOP unless a node is named:")
        stack = list(reversed(racks))  # top first
        for i, nid in enumerate(stack):
            pos = " ← TOP   " if i == 0 else (" ← bottom" if i == len(stack) - 1 else "         ")
            print(f"  ▢ {nid}  [{status(nid)}]{pos}  {NODES[nid]['label']}")
    print("\nThe falsifier REFUSES to select among the frontier.")
    print("wu-wei (min force / max unlock) is the neural/dyadic half's call.")
    print("[thrash-detection: not implemented in prototype — needs run history]")


if __name__ == "__main__":
    main()
