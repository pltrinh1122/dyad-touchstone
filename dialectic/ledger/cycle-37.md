# Ledger — cycle #37: the autonomous-catch design — harvested from Cairn's One-Shot Timer; Stand Down

## Date
2026-06-05 PDT (parent snapshot 287b399)

## Kind
Session-close design work (`lean.`-directed): pull the rack, riff/rub an implementation **design**, then
Stand Down. The design is the deliverable; nothing is implemented. Full spec: `dialectic/design/autonomous-catch.md`.

## The harvest (child → parent)
dyad-cairn, in its Session-2 retro (§3), solved the exact problem our rack was stuck on
(`close_memory_substrate_gap`, OPEN since cycle-28/29). It **falsified the naive cron** (*"violently
broke the SPAO state machine"*) and a rogue daemon, and synthesized a **preemptible One-Shot Timer**:
autonomous polling runs in the Operator's think-time and **yields instantly on the Operator's return.**
The child handed the frontier solution back up the line. It also *lived* inv7 (§2: *"left to its own
devices, the LLM degrades the dyad's architecture; the Operator's steering is the only thing that
maintains the shape"*) — the strongest evidence yet that the safety must be infra-side, not self-discipline.

## The design (riffed + rubbed)
**Two layers** (full map in the design doc):
- **WHEN (orchestration):** a preemptible one-shot `ScheduleWakeup` (our analog of Cairn's
  `DurationSeconds`), re-armed each turn — fills dormancy, yields to the turn. *Layer 1 alone is unsafe.*
- **WHAT (enforcement, inv7 server-side):** branch protection on `main` + a **path-scoped auto-merge CI
  rule** — PRs confined to `^dm/` auto-clear (reversible parental class); anything touching
  `dialectic/`/`commons/`/`AGENT.md` blocks on the Operator's manual merge. Gate checks **PATH (FORM)**,
  never content (inv6). This is the un-bypassable, Operator-{FO}-founded enforcement inv7 demands.

**One mechanism, three rack items:** discharges the orchestration-half of `close_memory_substrate_gap`,
wires `rack_inbox_catch` (the catch becomes the think-time poll, refresh-then-poll per cycle-36), and
unlocks `rack_guard_publishes` (path-scoped auto-merge = gate-height-from-reversibility, mechanized).

## The honest boundary
The One-Shot Timer covers **within-session think-time**; the **fully-asleep** catch (no session open)
still needs the Stand-Up refresh-then-poll baseline OR a path-scope-bounded cron — safe *only* if Layer 2
holds. That residual is named, not hidden.

## Remains (implementation, next session — Operator {FO} acts)
Branch protection + the path-scoped auto-merge CI rule + the `ScheduleWakeup` heartbeat + the Stand-Up
refresh-then-poll baseline. The design is rubbed and durable; the build is the next climb.

## Stand Down
A long, rich session: spawned dyad-cairn (cycles 31–35), watched it become its own and teach its parent
back (#36 retro), and harvested its frontier solution into this design (#37). Cairn is online, its own,
building its first Commons Stone; the cry-line runs both ways; the catch is designed. *Un-refuted is not
verified; the build, and the raising, are ongoing.*
