# Ledger — cycle #1: dogfooding the G/V planning prototype

> A claim without a ledger is not yet a Playbook (commons/CONTRIBUTING.md).
> This is the first cycle where the candidate discipline was *run and attacked*,
> not asserted. It records what could have failed and what survived.

## Date
2026-06-03

## The claim under test
A summit-rooted activity DAG, executed as a G/V pair: the **neural** half proposes
the next edge (and queries substrate for fact-edges); the **symbolic** falsifier
(`dialectic/playbook.py`) guards each transition — refuting illegal moves, refusing
to select, re-deriving done-ness by querying the source this run rather than trusting
a stored flag. Named +1: **planning made un-refuted-not-hoped.**

## What was run
`dialectic/dag.yaml` (structure only, no stored status) + `dialectic/playbook.py`
against our actual current activities.

## What could have failed (and didn't) — the attacks given a swing
- **Stale cache (Attack A):** status is stored nowhere; done-ness was re-derived by
  grepping `AGENT.md` / stat-ing files at run time. Verified by the capstone below.
- **Falsifier blesses instead of vetoes (Attack B):** `propose d6` returned PERMIT
  labelled *"Un-refuted, NOT verified; atomicity unchecked"* — it refused to confirm.
- **No chance to fail / no rejection (Attack E):** `propose d7` → **VETO (blocked by d6)**;
  `propose summit` → **VETO (goal)**; `propose d1` → **VETO (already done)**. The guard
  rejected three distinct illegal transitions.
- **Single lone terminal (Attack E):** frontier surfaced **three competing** ready
  terminals (d4, d6, b4), so edge-competition was real, not trivial.

## The capstone — substrate, not cache
Before writing this file, `b4` (this ledger) was `READY` and in the frontier.
Writing this file changes the substrate; re-running `playbook.py` must drop `b4` to
`done` *without any code or flag change* — because done-ness is queried, not remembered.
(Result recorded inline in the session immediately after this file was created.)

## What was refuted this cycle
- The session-opening claim *"you've implemented a prototype"* was refuted by the
  substrate (no such file existed). The dyad's NON-NEGOTIABLE held: it was not asserted
  into being; it was grounded, then built. The discipline guarded its own birth.

## Surviving architecture (carried forward)
One DAG, two bound interpreters. Neural evaluates judgment-edges + queries fact-edges;
symbolic falsifier is a runtime veto over each transition (acyclic, exists, ready,
deadlock) and refuses to select. Atomicity + wu-wei selection are neural/dyadic, never
guard checks. A pass is *un-refuted*, never *verified*.

## Known caps (no silent truncation)
- **Thrash detection not implemented** — needs persisted run history. Logged, not hidden.
- Fact-predicate vocabulary is minimal (`file_exists`, `file_contains`); richer
  substrate queries (test-green, git-state) deferred until a cycle needs them.

## Next cycle's seed
Frontier after this cycle (d4, d6) is the neural half's to select from. d6 (ontology)
carries the most live grain; d7 stays blocked until d6 lands.
