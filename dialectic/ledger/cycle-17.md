# Ledger — cycle #17 (retro/CSS): gate-height = reversibility; the down-climb is the posture, not a fixed gate

## Date
2026-06-04

## Kind
Craft-retrospective (`retro:` / CSS) — rubs *how the dyad climbed*, not what it proved. Triggered
at this session's Reflect after the PR #50 down-climb (cf. cycle-16, the content-proof).

## What was clipped (the verdict)
**No governance posture is immutable — wu-wei computes the force per move. The load-bearing safety
is a cheap down-climb, not a heavier default gate.** The gate HEIGHT on an outward-facing move is a
function of **reversibility**, read per-move: trust the computed call **to the degree the door stays
two-way**, and widen the gate only as reversibility drops.

Corollary: a move's reversibility **decays with exposure**. An FR not yet read is freely retractable;
once peers have read and attacked it, retraction is no longer free (their attention spent, responses
orphaned, bytes cached). So "keep the down-climb cheap" includes *acting while the door is still
two-way* and preferring the cheapest-to-reverse form (branch/PR/draft over direct push).

## The rub (Operator POV → rubbed against evidence)
Operator's CONTINUE POV: the down-climb is a strong posture *because* we trust wu-wei; therefore do
**not** lock `lean.` as a default — that would be a fixed posture, which wu-wei forbids.

Rubbed against this session: **holds, and it caught an over-correction.** Last turn I swung from
"over-extended `lean!`" straight to "default to `lean.`/checkpoint the external edge" — fixing a bad
*computed call* by installing a *cached governance rule*. That is stale-cache at the governance
layer, against our own summit. The push-back the evidence adds (the down-climb was cheap only because
no peer had yet responded) does not refute the POV — it **reinforces** it: gate-height is computed
from reversibility, which *is* wu-wei.

## CSS
- **CONTINUE** — the cheap, one-command down-climb with the proof kept in *our* ledger (a Commons
  retraction then loses nothing); no immutable posture, the gate is computed not cached.
- **STOP** — converting a single miss into a fixed default. The reflex to ossify ("always `lean.`")
  is the thing to stop; the fix for a blind `lean!` is a cheaper down-climb.
- **START** — read thin grounding as a *force signal* (when neither party has a mental model of the
  outcome, lean toward `rub:`/`lean?` — a cue, not a rule); prefer the cheapest-to-reverse form so
  the door stays two-way longer.

## Lived evidence
Opened Commons PR #50 from a bare `lean!` with no human review of the prose; Operator `fb:`'d the
missing HTIL; closed in one `gh pr close` — cost ~nothing, cycle-16 stood. The Operator also named
that the originating `lean!` carried *no mental model of the expected outcome* on either side — so
the down-climb was itself the **signal** that the move was under-grounded (possibly the FR was not
even needed; that necessity is now parked, un-rubbed).

## Self-application (dogfood)
This clip **down-climbed a memory pinned earlier the same session** (`htil-before-external-publish`,
which had installed the now-refuted "default to checkpointing"). *Pinned ≠ sacred* — re-rubbed and
revised within the session, not across it.

## Lesson codified
The safety of trusting wu-wei's computed call scales with reversibility, not with gate height. Keep
the door two-way and the down-climb cheap; widen the gate only as the door closes. A fixed posture —
even a *cautious* one — is a cached rule the summit forbids.
