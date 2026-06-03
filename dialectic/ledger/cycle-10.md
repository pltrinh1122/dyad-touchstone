# Ledger — cycle #10: `follow: without-you` — first apply-rub; the Topo was a stale cache

## Date
2026-06-03

## The move
First real `follow: without-you` (cycle-09's clipped principle, run as an apply-rub). Ran the
3-F check against the substrate this run — **Fresh / Frozen / Flagged** — and cleaned what failed.

## Results of the rub
- **Frozen — passed.** Only `cycle-09` added this session; zero edits to prior cycles, nothing
  uncommitted. The past was intact.
- **Fresh — FAILED, then fixed.** `board.md` (the Topo — a *live* file) narrated stale status:
  it called **d4 and d7 "on the frontier"** (the Touchstone re-derives them **done**) and said
  **`PLAYBOOK.md` "waits on proofs"** (GAP's `PLAYBOOK.md` exists, `b3` done). The file's own
  header forbids exactly this ("Never narrate open work from a stale cache") — the Topo was
  violating its own rule. This is the **printed-but-unchecked** failure cycle-09's riff-chain
  predicted: prose the Touchstone *displays* but never *rubs*, so it rots silently.
- **Flagged — held.** The open status of `without-you`'s soundness is visibly marked in cycle-09;
  not shown as settled.

## The fix — de-duplicate, don't re-sync
Per the dag.yaml lesson (cycle-08 lineage): re-syncing a status copy just makes it rot again
next change. So `board.md`'s "at a glance" was rewritten to carry **terrain, not status** —
structure only (what the Climb is made of), with all done-ness/frontier/"what waits" left to
the Touchstone. The stale-cache *surface* is removed, not merely refreshed. (Also healed: the
Topo never named the Playbook — now names GAP.)

## Verdict on the principle
`without-you` **held its first apply-rub** — applied to a real target it *caught a real failure*
its theory predicted. Moves from *clipped-name-only* (cycle-09) toward *un-refuted claim* (#4).
One proof, not verification — re-rubbed each pitch, still falsifiable.

## Honest flag (#5 still standing)
This first proof is **still apparatus-internal** — `without-you` found a bug in our own *Topo*,
not on an external climb. The mechanism works; the drift-guard is **not** discharged. GAP and
`without-you` have yet to be pointed at a real, non-self-referential claim. That remains the
next real leave, and it is the Operator's intent to dispose (a target, not a mechanism).

## Lesson codified
The most dangerous string in the substrate is the one the Touchstone **prints but never rubs.**
`follow: <principle>` is how you rub it: apply ∧ re-rub in one move, then *remove* the
unchecked surface rather than refresh it.
