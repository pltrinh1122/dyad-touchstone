# Queued thread — Event-Interrupt Servicing (the SPAOR-as-CPU question)

> **Status: OPEN / riff-stage — NOT clipped.** Queued 2026-06-03 at the Operator's request
> ("i've a lot to think about… let's queue this"). A design thread to be *planted on the
> Climb at a future Stand-Up* and matured `live → write → share` if it earns it. This doc is
> the durable capture so it resumes cold — re-derive from here, do not recall.

## The problem
SLA-bound peer-review work (and other external events) will keep arriving mid-session — "we're
the CPU servicing interrupts of jobs-to-be-done." Lived proof this session: PR#47 and PR#49
({FO} Commons work) interrupted an active {TO} pitch (R1). Each peer-review carries an **SLA**
(max tolerable service latency). Open architectural question: **does a SPAOR support
interruption in-place, or require a mandatory exit to spin up a separate event-interrupt SPAOR?**

## Operator's stated preference (fiat — recorded, not rubbed)
- **Queue by default.** While a session SPAOR is active, **new work/events are queued**, not
  serviced inline.
- **Truly-urgent interrupts are the only exception** — and **the urgency criteria are still
  TBD**, to be defined jointly ("you and i will need to define"). This is the next concrete
  sub-task when the thread is picked up.

## Agent's lean (riff — diverged, un-gated)
Not in-place-XOR-mandatory-exit. The CPU answer is a synthesis:
1. **Interrupt-SPAOR is first-class** — a peer-review spawns its *own* complete SPAOR
   (Sense→Act:falsify→Observe:post), never folded into the host pitch. The **{FO}/{TO}
   boundary (cycle-15) already IS the interrupt boundary** — {FO} Commons work interrupting a
   {TO} climb.
2. **Yield only at reentrant-safe points** (pitch boundaries/[ALIGN], segment seams/a mid-session `d-reflect`,
   explicit Time-Outs) — cooperative by default; no preemption mid-inference.
3. **SLA → priority → bounded preemption.** Scheduler rule: *service inline iff
   `time-to-next-safe-yield > SLA-slack`; else queue/defer.* Hard deadlines force a Time-Out park.
4. **Context-save = re-derive-from-substrate, never recall.** "Minimal where-was-I" is a cache;
   caches go stale (our summit). Robust resume = **re-run Sense on the parked pitch** →
   interrupt-return is a mini-Stand-Up. (Worked this session only because state was seconds-fresh.)

## The hazard (lived this session — weight it)
**Interrupt storm = livelock.** This session never committed a terminus; cycle-13's "spawns
forever" is exactly a CPU servicing only IRQs, never running the main thread. {FO} interrupts
(PR#47/#49) starved the {TO} main thread of a committed goal. Mitigations (CPU-borrowed):
**reserve a guaranteed main-thread quantum** the queue can't fully preempt, and **coalesce**
interrupts past a rate threshold (batch reviews into one pass — each Time-Out/resume has real
re-derive cost). The Operator's "queue by default" preference IS this mitigation.

## The reattachment seam (already racked, not new)
`master-spaor.md` §Racked: the **daemon + event-register** reattaches "feeding Stand-Up's Sense
as a sensor→register pair, never as an actor." That *is* this design: events land in the
**register** (pending-IRQ queue); **Sense drains it**; "never as an actor" = the register
queues, the loop services at a yield point. Un-rack it when SLA-driven inflow makes continuous
operation real.

## Open sub-tasks (when picked up)
- [ ] **Define "truly urgent"** — the interrupt-priority criteria (the one knob the Operator named).
- [ ] Plant this thread as a Climb node (dag.yaml) so it's governed, not just docced.
- [ ] Decide the coalesce threshold (inflow rate → batch vs inline).
- [ ] Decide whether interrupt-dispatch becomes a *standing* discipline (vs Operator hand-driving each `to:`).
