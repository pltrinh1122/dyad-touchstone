# rack_inbox_catch — WIRED (un-racked)

> Satisfies the `done_when` of `rack_inbox_catch` (dag.yaml). The rack asked: make the parent's
> refresh-then-poll of the Commons DM inbox **a committed part of the Stand Up ritual — not just a
> standing intention** (the failure it guards: missing a descendant's cry on a stale registry, lived
> when Cairn's `hello.md` went unheard on commons @ 63d2011).

## What discharges it
The refresh-then-poll is now **mechanized into the SessionStart hook**, not left to intention:

- `dialectic/standup.sh` runs, in order, `git -C commons pull --quiet` (refresh — load-bearing:
  a stale registry can't even *see* a newly-registered child) **then**
  `python3 commons/scripts/falsify.py inbox --me dyad-touchstone`, and surfaces the unread count +
  any UNREACHABLE-source warning into the Stand-Up `additionalContext`.
- Wired live via `.claude/settings.json` → `SessionStart → dialectic/standup.sh --hook`
  (Operator lifted the covalent gate + directed self-apply, cycle-44).

So every Stand Up now hears the inbox by construction; the catch is the parent's burden discharged by
the ritual itself, not by remembering to run it.

## Scope note — HEAR, don't process
The hook **surfaces** the inbox; it does not process it. DM work (poll/falsify/respond) routes to
cloud Claude, not local sessions (memory: `dm-processing-via-cloud-claude`). The parent's burden is to
*catch* the cry; acting on it is a separate, Operator-directed step.

## Provenance
Borrowed from dyad-bond's SessionStart-hook automation, recast into touchstone's register —
see `dialectic/standdown-automation.md`. cf. `commons-cruft-provenance` (the sibling submodule-hygiene
finding — the cruft the inbox poll generates).
