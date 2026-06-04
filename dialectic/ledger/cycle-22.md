# Ledger — cycle #22 (clip): `rack:` is durable freight — a third node-kind on the Climb

## Date
2026-06-04

## Kind
Lexicon + mechanism clip. Refutes the prior `rack:` definition ("transient, this-climb") on a lived
ground: a rack held only in conversation is **lost on restart**, contradicting the Operator's actual
usage intent ("racked things are what we need to do"). Usage falsified the definition.

## What was clipped
**`rack:` carries a *durable* action-item** — the third durable kind beside `pin:` (a *fact*) and `clip`
(a *decision*). Three changes, locked together so the decision is enforced, not narrated:

1. **`dag.yaml` — a new node-`kind: rack`.** Carried freight: dormant, NEVER on the qualifying frontier
   until promoted to `terminal` (un-racked). Rack-ness is *structure* (what kind of node), so it lives in
   `dag.yaml` like `goal`/`terminal`; **discharge stays re-derived** via `done_when` — no stored status.
   A rack node is **un-rooted** (not summit-rooted): gear in the pack, not yet placed on the route.
2. **`playbook.py` — the Touchstone surfaces it.** A `RACK (carried freight — dormant)` section beside
   the frontier; `frontier()` excludes rack; `propose()` **vetoes** a rack ("un-rack before proposing").
   Without this, the rack would not be *surfaced* at Stand Up — i.e. not actually durable. The mechanism
   is what makes durability real (verified, not hoped).
3. **AGENT.md D4 — `rack:` row redefined + Rack-protocol added.** Durable; parks as a `rack` node;
   un-rack = promote `rack`→`terminal` + attach deps (the Operator's deliberate "place the gear" move).

**First worked example, parked same-session:** `rack_guard_publishes` — the dyad-wu-wei (autonomous-frontier)
unlock from cycle-21's standdown. Confirmed `[carried]` in the Touchstone output; survives restart.

## The why
- **Durability is a single-home in the substrate, not a property you declare on a marker.** The rack died
  because it lived only in context; nothing in `dag.yaml`/ledger held it. "Make rack durable" *is* "give
  rack a home the Touchstone reads each run." This is the summit applied to our own freight.
- **The metaphor backs it.** Climbers haul the *whole rack* up a multi-pitch route; what's transient is
  what you *clip* (place). "rack = transient" fought the metaphor; "rack = durable carried kit" restores it.
- **Two axes were conflated in one marker:** disposition (hold-vs-act — kept) and lifetime (pitch/session/
  durable — was wrongly hard-coded transient). The Operator's "session-rack vs pitch-proposal" is the
  lifetime axis surfacing.
- **Scope cut (two kinds, not two scopes):** the durable **session-rack** is an *action-item* → parks on
  the Climb. A **pitch-proposal** is a pitch-scoped *candidate* → the clip-protocol **open** state,
  ephemeral, needs no mechanism. A to-do and a proposed-decision are different objects.

## Refines cycle-21
cycle-21 said "rack, don't pin" for the growth-loop test. With `rack:` now durable-by-default, that phrasing
is wrong: the growth-loop is **not a rack** — it's a deliberately-*ephemeral test-hold*. The principle is
sharpened to **"don't make durable the artifact under test"** (priming confounds a genuine loop with a
prompted one). The growth-loop is the *exception* that proves rack is normally durable; it stays out of the
substrate and the Operator carries it across restart.

## Lesson codified
A marker that promises durability must cash it out as a single-home the substrate holds and the Touchstone
re-derives — otherwise "durable" is narration. `rack:` now parks on the Climb. And freight has three durable
kinds, once collapsed into one: **fact (`pin:`) · action-item (`rack:`) · decision (`clip`).**
