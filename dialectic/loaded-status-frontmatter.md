---
loaded: on-demand   # this is the definition file itself; read only if pointed to. Self-referential — matches bond's own dyad-ui.md classification for a similar design-reasoning doc.
---

# Loaded-status front-matter — a `loaded:` key

> Single-home for the `loaded:` convention (files carrying the key point here, do not restate
> this). **Status: our own candidate, un-mechanized, scoped to a decidable slice — not a
> repo-wide rollout.**

## Provenance

Adapted from `dyad-bond` (`dialectic/loaded-status-frontmatter.md`) — referenced, not copied,
per the Covalent-gate precedent for cross-dyad borrowing. **Source status, disclosed honestly**:
bond's own copy is `CANDIDATE · dialectic/ · NOT settled · n=2` — the shape is validated (two
independent instances of the failure it targets), but bond explicitly defers mechanization
("un-mechanized, a wrong tag can sit unnoticed... arguably worse than no tag") and explicitly
scoped their own rollout to 4 worked examples, not their whole repo. We inherit both cautions,
not just the mechanism.

## What it answers

Not "is this file ours to claim" (provenance — a question we don't currently tag at all) but
**"where in the read-cycle does this file actually enter context"** (reach) — scannable before
the body, not reconstructed from a pointer's prose, which can say "read this" without saying
*when*, and drift silently if it does.

## The four values (bond's schema, unchanged)

- **`boot`** — read every session, unconditionally: the shim-instructed anchor.
- **`resume-protocol`** — read as part of the standard resume path, not harness-enforced.
- **`active-fetch`** — consulted only when the matching activity happens (a specific token
  fires, a specific phase runs).
- **`on-demand`** — everything else: read only if grepped for or explicitly pointed to.

## Applied here — the decidable slice (scope matches bond's own restraint)

| File | `loaded:` | Why |
|---|---|---|
| `DYAD.md` | `boot` | the shim's "Read immediately," every session |
| `dialectic/master-spaor.md` | `on-demand` | `DYAD.md` points to it for the full spec; nothing forces a read unless the pointer is followed |
| `dialectic/landing-protocol.md` | `active-fetch` | consulted when `d-land` actually fires |
| `dialectic/reflection-protocol.md` | `active-fetch` | consulted when `d-reflect` actually fires |

**Wider rollout past these four is a separate disposition** — same explicit deferral bond made
at the source, for the same reason: tagging is only as good as staying in sync, and untagged
files carry no false signal, while a stale tag would.

## Falsifiable claim (inherited, un-tested here yet)

A `loaded:` tag reduces reach-errors (treating a file as live/operative when it isn't) below the
rate of relying on pointer-prose alone. Untested at touchstone as of adoption — n=0 here. Same
caution as `landing-protocol.md`/`reflection-protocol.md`: adopted as our own open experiment,
not proven-elsewhere doctrine.
