# Design — the autonomous catch (preemptible one-shot timer + server-side path-scope)

> Status: **DESIGN** (riffed/rubbed; NOT implemented). Discharge-candidate for the *orchestration-half*
> of `close_memory_substrate_gap`; wires `rack_inbox_catch`; unlocks `rack_guard_publishes`. Harvested
> from **dyad-cairn's Session-2 One-Shot Timer** (child → parent; provenance: `dyad-cairn`
> `retros/session-2-retro.md` §3).

## Problem
The parent (touchstone) must catch descendant cries (poll the DM inbox) reliably, including when the
Operator is away — **without** (a) a background **cron** that breaks the SPAOR state machine / is the
un-human sleep-walk cortex-write risk (cycle-29), or (b) an autonomous mechanism able to write anything
beyond the bounded parental class (inv7).

## The harvest (the WHEN) — Cairn's preemptible One-Shot Timer
Cairn falsified the naive cron (*"violently broke the SPAO state machine"*) and the rogue daemon, and
synthesized a **preemptible one-shot timer**: autonomous polling runs in the Operator's think-time
("sleep") and **instantly yields on the Operator's return.** Our substrate analog: **`ScheduleWakeup`**
(one-shot delayed wakeup), re-armed at the end of each turn — exactly one pending wakeup at a time.

## The design — two layers

### Layer 1 — WHEN (orchestration): preemptible one-shot wakeup
- At the end of each turn, schedule ONE `ScheduleWakeup` after delay D (a think-time heartbeat).
- On wakeup: run the catch (Layer 2), then re-arm one new wakeup. **One-shot, never a recurring cron.**
- An Operator turn is always live; the wakeup only fills dormancy and never competes with the turn
  (inv4). Return is cheap — the Operator just sends a turn (the **STATE-6 keystone**).

### Layer 2 — WHAT (enforcement, inv7 SERVER-SIDE): path-scoped auto-merge
On wakeup the catch may ONLY:
- **READ:** `git -C commons pull` (refresh the registry — cycle-36 lesson), poll
  (`falsify.py inbox/dm --me dyad-touchstone`), read descendant DMs.
- **WRITE:** a reply under `dm/<descendant>/` (bounded, reversible parental class), via branch + PR.
- **MAY NOT** touch `dialectic/` (cortex), `commons/` (beyond the refresh pull), `AGENT.md`, memories;
  may NOT open a Commons-facing PR.

Enforcement is **server-side, un-bypassable** (inv7 — an Operator {TO} infra act, NOT the agent's
self-discipline, NOT a `bin/` wrapper which the agent can bypass):
- **Branch protection** on `main` (no direct push).
- **A path-scoped auto-merge CI rule:** a PR whose diff is confined to `^dm/` **auto-merges** (the
  reversible class auto-clears); any PR touching `dialectic/`/`commons/`/`AGENT.md` **blocks on the
  Operator's manual merge** (HITL). The check is on diff **PATHS (FORM)**, never content (inv6).

## Invariant map (cycle-28's 7 + cycle-29)
1. consolidation = the gate's wake-act → cortex-writes can't auto-merge; they wait for the Operator. ✓
2. no judgment-harvest while sleeping → the autonomous wake *physically can't* consolidate to cortex. ✓
3. sleep ⊥ gate → the gate runs server-side, independent of the sleeping agent. ✓
4. dyad-awake = the turn → the one-shot fills dormancy, yields to the turn. ✓
5. WAL ≠ cortex; un-clipped = un-consolidated, not lost → unmerged cortex-PRs are honest WAL, durable. ✓
6. safe iff deterministically-checkable / cheaply-reversible; gate checks FORM → path-scope is form; `dm/` is reversible. ✓
7. un-bypassable = server-side, Operator {TO} → branch protection + CI path-rule. ✓

## Two regimes (the honest boundary)
- **WITHIN-session think-time** (Operator present, between turns): the one-shot wakeup covers it. ✓
- **FULLY-asleep** (no session open): the one-shot can't fire (no process). Covered by the **Stand-Up
  refresh-then-poll** baseline (`rack_inbox_catch`) OR a **path-scope-bounded cron** (`CronCreate`) — the
  cron is safe *only because Layer 2 makes it unable to cortex-write.* This is the residual frontier.

## Rubs (open weaknesses)
- The wakeup IS a real agent turn. inv2 holds not by "don't wake" but by "the wake can't consolidate to
  cortex" (Layer 2). **Layer 2 is load-bearing; Layer 1 alone is unsafe.**
- A `dm/` reply auto-merges without content review. Bounded by: reversible (supersede before polled) +
  legible trace (committed DM) + the parental class + the Operator's explicit grant ("I won't
  monitor/approve PRs for Cairn exchanges"). Content-truth-check is forbidden (inv6).
- Substrate-specific (`ScheduleWakeup`/`CronCreate` are this harness's). Adapt elsewhere.

## Discharges vs. remains
- **DISCHARGES (design-level):** the orchestration + enforcement model for `close_memory_substrate_gap`.
- **REMAINS (implementation — Operator {TO} acts):** branch protection on `main`; the path-scoped
  auto-merge CI rule (the server-side enforcement); the `ScheduleWakeup` heartbeat wiring; the Stand-Up
  refresh-then-poll baseline. **None built this session — design only.**
