---
loaded: on-demand   # not a boot read; the WHY-home for the Stand-Up/Down hook automation.
---

# dyad-touchstone — Stand-Up / Stand-Down Automation

> **Single-home** for the session-ritual mechanization. **Borrowed from dyad-bond**
> (`dialectic/standdown-automation.md`, `bin/standup.sh` + `bin/standdown.sh`, K6 2026-06-13)
> and **recast into the assayed-climb register** — references point, never copy (single-home #1).
> WHAT: mechanize the *deterministic* spine of the Stand-Up / Stand-Down rituals and auto-surface
> it at boot, without a per-session trigger — while keeping the *judgment* write the dyad's covalent
> act. WHY: the Sense ritual (`master-spaor.md`) opens with checks the agent otherwise hand-runs
> every session; hand-run = drift + forgettable, and the substrate IS the dyad's cross-session
> memory, so a reliable close/open is substrate-durability work.

## The one load-bearing difference from bond — status is not stored

Bond's stand-up **diffs each anchor file against a stored ROM-baseline sha** recorded in its
carry-forward ledger. **Touchstone stores no status** (single-home #2: *status is never stored,
only rubbed*). So the port is **not** a baseline-diff — the Stand-Up spine is the Sense ritual's own
deterministic half (`master-spaor.md` line 18): **re-derive the frontier via the Touchstone (never
cache) · pull the inbox · durability · substrate probe.** The frontier is *re-computed at boot*, not
compared to a cache — which is exactly what "never narrate open work from a stale cache" demands. The
hook running `playbook.py` this run makes the injected frontier a **this-run streak, not a shine.**

## The two halves — and why only one is hook-automatable

- **Mechanical (deterministic → automate):** the re-derived frontier (`playbook.py`), the inbox-catch
  (refresh-then-poll), the durability check (uncommitted/unpushed = ungrounded memory), the substrate
  probe. No judgment — a script does these correctly.
- **Judgment (NOT automatable → the dyad's act):** at Sense, **committing the session-target**
  (end-in-mind law — the Operator's seat; *the falsifier refuses to select*). At Reflect, the
  **harvest** (which moves rang sound) + the **CSS+OR** retrospective. A hook that wrote the Ledger
  itself would harvest un-rubbed moves — counterfeit proofs. **auto-trigger ≠ auto-judgment.**

### The hook contract makes that a HARD boundary *(bond's finding, re-inherited — verify against the live contract, do not assert from this note)*

| Hook | Fires | Can inject context to the agent? | Use for us |
|---|---|---|---|
| **SessionStart** | startup / resume / clear / compact | **YES** — `additionalContext` | **Stand-Up:** run the mechanical checks, inject so Sense loads the re-derived frontier with no trigger |
| **Stop** | every turn-end | yes, but *every* turn | ✗ — cannot mean "Stand-Down"; would nag each response |
| **SessionEnd** | clear / resume / logout / … | **NO** — teardown-only, agent already gone; stdout fate substrate-dependent (may be inert on cloud) | mechanical *logging* only (`--log`) |

So the **Stand-Down judgment write cannot be hook-fired into the agent** (SessionEnd is too late; Stop
is every-turn). The faithful architecture therefore **inverts the naive "automate the whole stand-down":**

- **Stand-UP is the automatable win** — `SessionStart → dialectic/standup.sh --hook` injects the
  re-derived frontier + inbox + durability as `additionalContext`. This removes the boot trigger.
- **Stand-DOWN** — the **agent** runs `dialectic/standdown.sh` at close and reads the judgment
  template. A SessionEnd hook may run it `--log` for the mechanical durability line only.

## The Stand-Down TRIGGER — already `d-reflect` (no new fiat)

Bond had to **mint `clip`** as its stand-down trigger because `/exit` is a desktop-terminal command a
mobile/abrupt close skips. **Touchstone already has the typed marker: `d-reflect`** (DYAD.md §Session
rituals; `master-spaor.md` line 22) — one act, two outputs (harvest + CSS+OR). A typed marker fires on
**any substrate** (mobile included), unlike `/exit`. So the trigger the architecture needs already
exists; we did not overload a marker, we wired the ritual that was already named. The SessionStart
frontier re-derivation is the stateless boot-side safety net that catches a skipped close regardless.

## Artifacts

- **`dialectic/standup.sh`** — Sense mechanical spine; `--hook` emits the SessionStart
  `additionalContext` JSON. Frontier (re-derived) · inbox-catch · durability · substrate. Inert until wired.
- **`dialectic/standdown.sh`** — Reflect mechanical spine (durability + still-open count) + the
  **judgment template** (harvest · CSS+OR · without-you · Climb integrity). `--log` = mechanical line only.
- **No installer script.** Bond retired its `install_hooks.py` as a single-home violation (a committed
  generator drifts from the live file it wrote). We never build one — the wiring is a one-line
  `.claude/settings.json` block, hand-applied by the Operator; the permanent record is this doc + git.

## Install — APPLIED (Operator lifted the gate + directed self-apply)

Wiring these as hooks is **installing automated self-behavior** — exactly the **Covalent gate**
(DYAD.md D4): *"a standing rule is the Operator's to **apply**; I **author** the rule, never self-apply
it. Widening my own authority is self-modification, not a mechanism — the scope of my mechanism-authority
is itself the Operator's intent."* The scripts are authored by the Agent (reversible mechanism, Invariant
I); the `.claude/settings.json` wiring was gated on the Operator. **The Operator explicitly lifted the
gate and directed self-apply** (session cycle-44) — the intent that scopes my authority was disposed, so
the Agent applied the block below directly. This is the gate working *as designed* (the widening was the
Operator's call, not an Agent self-grant), not a bypass of it.

```json
"hooks": {
  "SessionStart": [
    { "matcher": "startup|resume|clear|compact",
      "hooks": [ { "type": "command",
        "command": "$CLAUDE_PROJECT_DIR/dialectic/standup.sh --hook" } ] }
  ],
  "SessionEnd": [
    { "hooks": [ { "type": "command",
        "command": "$CLAUDE_PROJECT_DIR/dialectic/standdown.sh --log" } ] }
  ]
}
```

## Open / not-yet-proven

- **RACK verbosity.** `standup.sh` injects `playbook.py` verbatim (single-home — the hook must not
  editorialize the Touchstone's own output). The RACK section is long; if the injected context bloats,
  the fix is in **`playbook.py`** (trim the RACK render), not in the hook. Flagged, un-rubbed.
- **First post-install Stand-Up** should confirm the injected `additionalContext` actually appeared,
  and that the SessionEnd `--log` line's fate on this dyad's substrate (cloud vs local) is as documented.
- **Discharges `rack_inbox_catch`** — the refresh-then-poll is now a committed part of the Stand-Up
  script, not just a standing intention (the rack's own `un-rack =` condition). Un-rack on apply.
