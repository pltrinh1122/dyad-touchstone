---
origin: "dyad-touchstone (internal — lived, not yet shared)"
unit-kind: "playbook"
schema-version: "discipline-ontology@2026-05-31"
lineage: "none"
trigger: "planning multi-step work where progress is narrated from memory and silently drifts"
claim: "a summit-rooted activity DAG that stores STRUCTURE ONLY and re-derives done-ness by querying the substrate this run — G proposes the next edge, a symbolic falsifier guards every transition and refuses to select — makes planning un-refuted-not-hoped, killing stale-cache progress"
refutation: "stored status drifts into stale cache · a fact-predicate is satisfiable by prose that merely describes it (false-positive green) · the falsifier blesses instead of vetoes (rubber-stamp) · no real edge-competition, so it never gets a chance to reject"
mechanism: "falsify + minimum-force"
---
# Dag-Planning

## Index Line
> **Dag-Planning:** When you plan multi-step work, do not track status in the plan. Encode the work as a summit-rooted DAG that stores **structure only** — nodes, dependencies, and a `done_when` *predicate* per leaf — and re-derive done-ness every run by **querying the substrate** (files, tests, git state), never a stored flag. A generative half proposes the next edge; a symbolic **falsifier** vetoes illegal transitions and **refuses to select** among the ready frontier. A pass is *un-refuted, not verified*. This replaces "narrate progress from the stale cache" with "rub the plan against what is actually true this run."

## The Move *(ordered, wu-wei-atomic steps)*
1. Encode the climb as a **DAG of structure only** — nodes, deps, and a `done_when` predicate per terminal. Store **no** `done:` flag; a stored flag re-creates the stale cache the summit exists to kill.
2. Make every `done_when` predicate query a **dedicated artifact**, never a substring that prose could merely *describe*. (Existence-of-a-sidecar > substring-in-a-shared-file for anything that gates a transition.)
3. At **Sense**, run the falsifier (the **Touchstone**): it rubs each predicate against the substrate *this run* and prints the **qualifying-terminal frontier** (ready: deps met; un-refuted: predicate false).
4. The falsifier **vetoes** illegal moves (cyclic, nonexistent, blocked, already-done, goal-node) and **refuses to select** among the frontier. **Wu-wei** — minimum force, maximum unlock — is the human/dyadic call, never a guard check.
5. A pitch's **leave** is a substrate-checked transition: it completes only when its predicate holds *by query*, not by narration.
6. Log each survived round as a **proof** in the ledger. Admit a named sub-discipline only when its **G**, its **V**, and the **real substrate its V queries** can all be named — **one discipline per proof.**

## Two bound interpreters
One DAG, read by two halves bound together:
- **Generative (neural):** evaluates judgment-edges and queries fact-edges; proposes the next move; selects from the frontier by grain.
- **Symbolic (falsifier / Touchstone):** a runtime veto over each transition (acyclic · exists · ready · not-deadlocked · not-already-done). It re-derives status by query, refuses to select, and never blesses — a pass is reported *"un-refuted, NOT verified."*

Atomicity of a step and wu-wei selection are the generative/dyadic half's; they are **never** guard checks. The bind is the +1: planning becomes *verified by mechanism*, not hoped.

## Admitted sub-disciplines *(one per proof)*
- **pitch-prep** — *G:* decompose a pitch and declare how its done-ness will be queried. *V:* the Touchstone refutes a fakeable fact-edge. *Proof:* cycle #2 (the `RATIFIED` substring false-positive nearly let a climb ascend on a lie) + cycle #3 (the fix: a dedicated sidecar artifact prose cannot fake).
- **next-pitch-climb** — *G:* wu-wei proposes a pitch. *V:* the Touchstone refutes any non-qualifying terminal. *Proof:* the frontier selections across the founding session (d6 chosen over d4/b3 by queried readiness and grain).

Undefined siblings (down-climb, belay, …) stay **named-but-unwritten** until a climb mints their proof. The frontier turns outward by ascending, not by cataloguing.

## Invariants
- **Status is never stored, only rubbed** — re-derived each run (cycle #1, Attack A).
- **A predicate must not be satisfiable by prose that describes it** — status lives in its own home (cycle #2).
- **The falsifier refuses to select** — it bounds the frontier; the human picks by wu-wei (cycle #1).
- **Un-refuted is not verified** — every pass is re-tested next pitch (every cycle).
- **A Ledger of proofs precedes a Playbook** — disciplines are *earned*, admitted one-per-proof (cycle #3).

## Ledger
The accumulating evidence lives in **`dialectic/ledger/`** (single-home — referenced, not copied here). Six cycles seed it: the prototype dogfood (#1), the false-positive predicate and its fix (#2–#3), the standing-up top-out (#4), the [ALIGN]-timing falsification (#5), and the lived marker-lexicon (#6). At the future `write → share` leave (Founding gate), these are assembled into `library/dag-planning/ledger/` for the Commons PR.

> **Breadth honesty.** This is **single-dyad** (dyad-touchstone) and **internal — not yet shared**; admission to the Commons is deferred to the `write → share` leave, gated by lived soundness, never by assertion. Known caps, logged not hidden: **thrash-detection is unimplemented** (needs persisted run history); the **fact-predicate vocabulary is minimal** (`file_exists`, `file_contains`); the "dedicated-artifact" rule is a **discipline, not yet a mechanical check**; artifact-rename to the register (`playbook.py` → "the touchstone") is a deferred pitch. Depth ≠ breadth.
