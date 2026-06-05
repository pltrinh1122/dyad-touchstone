# Ledger — cycle #29: the sleep→awake boundary — *authorization-reach (not presence) + the return keystone*

## Date
2026-06-04 PDT (re-GAP at HEAD; parent snapshot 4f44b39)

## Kind
`clip` (convergent gate) — the wake-act *is* this consolidation (invariant 1 proving itself again).
Session was a `riff:`→`rub:`→`riff:` co-design pass on the mechanism for `close_memory_substrate_gap`.
Per [[value-is-rubbed-residue]] / the cycle-28 lesson, what is consolidated is the **rubbed residue**
(new invariants + distinctions), **not** the design G the Agent generated.

## The substrate sweep (candidates already in the substrate, mapped to the cycle-28 invariants)
Authoritative inventory pulled from official Claude Code docs *this run*:
- **Hooks (harness-run, deterministic)** — `PreToolUse` can **block (exit 2)** → the synchronous FORM-veto
  on cortex-path writes (inv. 2, 6). `SessionStart` → mechanized Stand-Up (run the Touchstone, inject the
  frontier; inv. 4). `Stop`/`SessionEnd` → the turn/session boundary (wake-act candidates).
  **Only command/HTTP/MCP hooks are deterministic** — Prompt/Agent hooks are model calls, so a FORM-gate
  must be a **command hook**, never a prompt hook (inv. 6).
- **auto-memory = the WAL** — and it is literally Claude Code's auto-memory dir (where cycle-27's lost
  insight was filed). **Relocatable** via the `autoMemoryDirectory` setting. The WAL stays *distinct* from
  cortex (inv. 5); the grain is the **promotion path**, not a merge.
- **`/goal`** — harness-driven autonomy loop, but its evaluator is a **stochastic fast model checking
  TRUTH-from-transcript** → collides with inv. 6. It is an **ascent-driver, not the consolidation gate.**
- **Routines / `CronCreate` / `/loop`** — sleep-time autonomy; legal only for inv-6-safe work.
- **Server-side enforcement (inv. 7) is NOT a substrate primitive** — hooks are local + the Agent holds the
  keys. The un-bypassable layer is **git origin** (GitHub branch-protection + required FORM-check, or a
  pre-receive hook). Substrate gives the *check-runner*; only the git server gives *un-bypassability*. {FO}.

## The boundary rubs (this session's derived residue — *un-refuted, not verified*)
- **R1 — three states, not two.** dyad-awake (a turn) · dyad-asleep+Agent-dormant (true sleep) ·
  dyad-asleep+**Agent-active = sleep-walk** (cron/routine fired with no Operator prompt). By inv. 4's own
  words (*awake = responding to the Operator's prompt*), a scheduler-triggered run is **not** dyad-awake.
  Sleep-walk is the **only** place a cortex-write could happen un-human — exactly what inv. 2/6 fence off.
- **R2 — the gate cannot check "was this clipped."** That is a TRUTH question, forbidden to the
  deterministic gate by inv. 6. The gate can only check **provenance/FORM**. So "nothing to cortex without
  convergence" is delivered by the **awake-boundary (structure)**, never by the gate's content-check.
  *Correction to the Operator's framing:* **substrate ≠ cortex.** The **WAL must capture free** — gating
  *capture* re-creates the cycle-27 willpower-tax (the root cause we are climbing out of). Only the
  **cortex** (ledger/dag/anchor) requires convergence.
- **R3 — provenance ≠ presence (the session's summit).** The Operator can *initiate* a turn then *leave*
  (lived states: split-attention / away-briefly / away-indeterminate). So the proxy "provenance = presence"
  is **falsified**. The load-bearing variable is **authorization-reach, not presence-at-write.** A clip is a
  **speech-act**: issued at authorization-time (compose/submit), executed possibly later — **live** (present)
  or **pre-committed in the prompt** (away; = [[no-hope-pre-commit-action]]). **Past authorization's reach the
  Agent is in sleep-walk regardless of who opened the turn → law: HOLD, never manufacture convergence.**
- **R4 — away-consolidation safe ⟺ outcome deterministically modelable at authorization-time.** This is
  cycle-20's `lean!` precondition (*a clear shared model must already be held*) **= invariant 6, one level
  up (fractal).** Judgment waits for return; the deterministic remainder rides the authorization.
- **R5 — STATE-6 (Returning / re-entry) = the missing keystone + the payoff site.** The Operator's five
  states omitted *coming back*. It is where inv. 5 (**un-clipped = un-consolidated, NOT lost**) finally
  cashes out: the Operator returns and finds the WAL-accrued work **waiting, legible, not lost.** It is
  load-bearing both ways — **state 6 is what makes states 3/4/5 safe to permit at all**: if return is
  cheap+legible, holding-instead-of-clipping costs nothing; if return is un-handled, the WAL silently
  rots and we have **rebuilt narrate-from-cache** — the exact failure the gap exists to kill.

## `close_memory_substrate_gap` — status (terminal stays OPEN)
**Constraints further refined** (the boundary = authorization-reach; the return keystone). The
**mechanism is still un-built** and inv-7 enforcement is still the Operator {FO} dependency. So:
**better-specified, not discharged.** No false "done."

## Open seam (next rub)
**State-3 (split attention): who decides a convergence-ping is "needed"?** That is itself a judgment the
Agent makes while the Operator is half-away — false ping = nagging; missed ping = self-clip. The decision
to interrupt is the un-resolved sub-gate.

## Lesson codified
The boundary between sleep and awake is **not attention — it is authorization-reach.** Consolidation rides
the human's authorization (issued live, or pre-committed for the deterministic remainder); everything past
that reach must **hold**, never self-clip. And the mechanism's real burden is not the gate — it is making
**the return (state 6) cheap and legible**, because that is the only honest way to let the Operator walk
away. *Un-refuted is not verified; the mechanism is still un-built and inv-7 enforcement is the Operator's
to found.*
