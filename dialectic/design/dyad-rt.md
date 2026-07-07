# dyad-rt — the Dyad Runtime (architecture + provenance)

> The full reasoning behind `DYAD.md §Runtime — operating mode (dyad-rt)`. Lives here,
> not in the anchor: the anchor pays a per-prompt injection tax, so it holds only the
> loadable operating model; the *why/history* lives here (invariants→anchor,
> provenance→separate — the same split the memory index names). Built cycle-47 arc
> (2026-07-07), native-adaptation of dyad-cairn's Dyad Runtime.

## What dyad-rt is

The runtime that takes over when the **native harness permission gate is turned OFF**
(`bin/claude` → `claude --dangerously-skip-permissions`). With the harness no longer
prompting, *something* must still guard the irreversible acts. dyad-rt is that something:
the dyad's own, git-layer enforcement plus Covalent discipline.

The launch is a **per-launch Operator election** — `claude` (gate on) vs `bin/claude` (gate
off) — deliberately NOT baked into config (`defaultMode: bypassPermissions`). Path-invoked
and ratified by merge, it is the Operator's **Covalent opt-in**, never an Agent self-grant.
That distinction is the whole reason a wrapper is covalent where a checked-in config default
is not.

## cairn's runtime (what we ported the *pattern* from)

Rubbed against dyad-cairn's actual source (`github.com/pltrinh1122/dyad-cairn`), not its
description. Three layers:

1. **Launcher** (`bin/agy`) — execs the agent with `--dangerously-skip-permissions`.
2. **Interception layer** (`bin/git`, `bin/gh`, `bin/node`, …) — PATH-shim wrappers. Because
   `bin/` is on PATH, a bare `git`/`gh` resolves to the wrapper, which calls the policy engine
   *before* delegating to the real binary. Cairn's DYAD.md makes this a hard law:
   *"The Agent MUST NOT use primitive `git`/`gh` directly … physically routes execution
   through the Sandbox Enforcer."*
3. **Policy engine** (`skills/sandbox_enforcer.py`) — an **ABAC sandbox**. Reads FSM state
   (`fsm_state.yml`), the active branch/frontier-node scope, and external **Neutral-Quarry
   `README.md` ownership tables**, then allow/denies with "STEERING VECTOR" feedback. The bulk
   of its logic is *multiparty boundary safety* — stopping cairn from editing files it does not
   own inside an external commission repo.

## Our native adaptation — what we kept, dropped, and inverted

**Kept:** the reasoning — native-gate-off launcher + a mechanical enforcement layer as the
authority, keyed to the dyad's own concepts, gating at the irreversible step.

**Dropped:** the Neutral-Quarry ownership ABAC and the "all git/gh through PATH-shim
wrappers" law. That machinery serves *external-code commissions*; touchstone's craft is
**nurture** (Commons / DM / lineage), and we run no external-code quarries. Porting it verbatim
would carry weight we don't use while barely covering the exposure `bin/claude` actually opens.

**Inverted — the load-bearing divergence.** Cairn's law leans on **agent compliance**: the
Agent must *remember* to call `bin/git` instead of `git`. We refuse a law that depends on the
agent not forgetting — a rule bypassable by forgetting is shine, not a guard, and shine-over-
streak is the exact fragility our craft exists to distrust. Our enforcement is a **git-layer
hook** (`core.hooksPath=dialectic/githooks`) that fires **mechanically, regardless of the
agent** — including with the native gate off, because git hooks are below the harness. No
routing discipline to remember; the mechanism is its own enforcement vector (the CSI-guard
lineage cairn itself gifted us, cycle-39).

### The guards
- **pre-push** → `dialectic/guards/main_history_guard.py` — refuses a *local* push to
  `refs/heads/main` (direct / force / delete). `main` advances only through a forge-merged PR
  (server-side; cf. memory `self-merge-pr-to-main`). This is the **unbypassable spine**.
- **pre-commit** → `dialectic/guards/anchor_guard.py` — refuses an anchor staged on `main`
  directly (anchors are low-reversibility; they change only through a reviewed PR).

Both gate the **irreversible** step (Invariant I — minimum force by reversibility), never the
reversible write. `--no-verify` is the visible, deliberate Operator escape (wu-wei: the human
is never forced).

### Envelope honesty
The guards are git-layer, so the **non-git destructive class** (`rm -rf <subdir>`,
`git reset --hard`, `git clean -fd`) has **no** hook. In DYAD mode that class rests on an
isolated/disposable run host, not on the runtime. **Precondition:** `core.hooksPath` set per
clone — unset = *no guard fires*. Use `bin/claude` only where that envelope holds.

## The lived rub that forged "mechanical, not compliance"

The `bin/claude` launcher was copy-pasted from dyad-bond as the first step of this arc. Rubbed
against touchstone's actual substrate, its safety header asserted an envelope we **did not
have**: *"`.githooks/pre-push` fires regardless of permission mode, so force/delete/direct push
to `main` is still refused."* We had no `.githooks/` and no pre-push hook at all — only a
pre-commit anchor guard. So the launcher turned the native gate OFF while its own "main-history
protection SURVIVES" claim was **false**. The copied doc *shone* (fluent, plausible) and failed
the *streak* (rubbed against real hooks). Building `main_history_guard.py` + the pre-push hook is
what made the claim true rather than aspirational. This is the concrete proof behind the inversion:
a launcher's *description* of protection is worthless; only the mechanism that fires is the guard.

Two smaller copy-artifacts caught and fixed the same session: `bin/agy` (exec'd `agy`, cairn's
substrate, not ours — removed); `anchor_guard.py`'s `ANCHORS` set still named the pre-rename
`AGENT.md` (2026-06-12 → `DYAD.md`), so it was guarding a file that no longer exists.

## Maturity — this design is a candidate, not doctrine

By our own **live→write→share** (ontology #6, "a Ledger of proofs precedes a Playbook"), the
runtime is at **live** with ~zero lived catches: built and end-to-end verified this session
(the pre-push hook refused a real push to `main` on a throwaway remote; a feature-branch push
and `--no-verify` both passed), but it has caught **zero real mistakes** in the wild. The
*envelope* is a verified **fact** (pin-able now); the *design claim* — "mechanical-over-
compliance is the right runtime for us" — wants living before it hardens to doctrine. Re-rubbed
each pitch; pinned ≠ sacred. A full Ledger **proof** entry harvests only once the runtime lives
a real catch.

## Deliberately unbuilt (parked)
- **Layer-4 context-steering shim** (a `bin/git`-style wrapper that *warns* without being the
  authority). Skipped: it is bypassable anyway, and the hook spine already covers the
  irreversible step. Build only if a real friction demands it (minimum force).
