# Ledger — cycle #44: borrow dyad-bond's session-hooks, recast for a no-stored-status substrate

## Date
2026-07-04 (session). Triggered by an Operator directive: *"borrow and implement bond's startsession
and endsession hooks. fetch latest from dyad-bond remote repo for reference."* De-facto session-target
(the frontier item the Operator selected in place of the computed frontier); topped out on `d-reflect`.

## Kind
`clip` (a shipped LIVE of the cross-dyad borrow discipline) — the Stand-Up/Down mechanical spine is
mechanized as Claude Code hooks. `pinned ≠ sacred`; the end-to-end hook *behavior* is un-lived (see
Flagged), so only the authored-and-verified rung is banked.

## Leaves (lived, shipped)

1. **The recast, not the copy — the load-bearing proof.** Bond's `standup.sh` diffs each anchor file
   against a **stored ROM-baseline sha** in its carry-forward ledger. Touchstone **stores no status**
   (single-home #2). Rubbed against the substrate this run (grepped for any `carry-forward`/`rom-baseline`
   home → none; read `master-spaor.md:18`), the port inverted: the Stand-Up spine **re-derives** the
   frontier via `playbook.py` this-run + inbox-catch + durability + substrate — never a baseline diff.
   *references point, never copy* lived at the mechanism level, not just the citation.
2. **Trigger reused, no new fiat.** Bond had to **mint `clip`** as its stand-down trigger (`/exit`
   skips on mobile). Touchstone already had the typed marker **`d-reflect`** — wired the ritual already
   named rather than overloading a marker. First real fire of `standdown.sh` was *this* `d-reflect`.
3. **`rack_inbox_catch` discharged.** The refresh-then-poll (`git -C commons pull` → `falsify.py inbox`)
   is now committed into the `SessionStart` hook — its own un-rack condition (*"a committed part of the
   Stand Up ritual, not just a standing intention"*). Touchstone scores it `[discharged]`. Surface-only:
   DM work still routes to cloud Claude (`dm-processing-via-cloud-claude`); the parent *hears*, doesn't act.
4. **Covalent gate, worked as designed.** Wiring `.claude/settings.json` = installing standing automated
   self-behavior → authored by the Agent, **held** until the Operator's explicit *"self-apply"* lifted
   the gate. The widening was the Operator's call (the scope of my mechanism-authority is the Operator's
   intent, DYAD.md D4), not an Agent self-grant. Recorded as gate-working, not gate-bypassed.

## Rubs that caught something
- **shellcheck SC2164** — the scripts dropped `set -e` (so a dark inbox degrades to WARN, not abort);
  that made a failed `cd "$ROOT"` silently run in the wrong dir. Caught + hardened (`|| exit 1`) before
  landing. A real defect a dry-run alone would have missed.

## Flagged — un-lived, do not bank as green
- **The hooks have never fired *as hooks*.** They were wired mid-session, so this boot never ran them;
  every check was a hand-run of the scripts + JSON/shellcheck validation. The claim "the SessionStart
  hook injects the frontier at boot" is **authored + mechanically-plausible, not lived.** First real fire
  is next session's `startup` — confirm the `additionalContext` actually appears, and the `SessionEnd
  --log` fate on this (cloud) substrate. Streak-over-shine: the shine is wired; the streak waits for boot.

## Artifacts
`dialectic/standup.sh` · `dialectic/standdown.sh` · `dialectic/standdown-automation.md` (WHY, single-home)
· `.claude/settings.json` (hooks) · `dialectic/rack/inbox-catch-wired.md` · DYAD.md §Session rituals
pointer. Commits `e3cb5b7`, `04523b5` on `main`.

## CSS — craft-retrospective (Agent lane)
- **CONTINUE** — *borrow-by-recast, not borrow-by-copy.* The win this session was catching the register
  difference (stored-status vs re-derived) instead of porting bond's baseline-diff verbatim. That is the
  `references point, never copy` discipline paying its keep on a real mechanism, not just a citation.
- **CONTINUE** — *dogfood at the boundary.* Ran `standdown.sh` as the actual `d-reflect` spine, and
  re-ran `playbook.py` to confirm the un-rack — verified the tool against the substrate, not from the
  edit's shine.
- **CONTINUE** — *gate held without friction.* Authored the settings block and stopped at the covalent
  gate; applied only on the explicit lift. No over-guarding (didn't refuse the eventual apply), no
  self-grant (didn't pre-empt the lift).
- **START** — *carry the "un-lived" flag forward loudly.* Next Stand Up must actively confirm the hook
  fired; a wired-but-never-fired mechanism reading as done is the exact counterfeit-green this dyad guards.
- **STOP** — none named this session (no `fb:` correction fired).

## SH — Operator reflection lane (Operator authors; Agent surfaces substrate only)
Per `reflection-protocol.md`, SH is the Operator's lane — I do not form it. Verbatim substrate from this
session, offered to push lookup-cost off the Operator (form Should-Have / Should-Hold if any fits):
- *"borrow and implement bond's startsession and endsession hooks. fetch latest from dyad-bond remote repo for reference."*
- *"self-apply"*
- *"raff"*
- *"d-reflect"*

## without-you — Fresh / Frozen / Flagged
- **Fresh:** session-hooks live + wired + landed; `rack_inbox_catch` discharged.
- **Frozen:** the rest of the frontier is unmoved — `d1`, `gap_rings_sound`, `capstone_share`,
  `close_memory_substrate_gap` stay READY; the RACK stack is otherwise unchanged.
- **Flagged:** first live hook fire un-confirmed (next boot); the `commons` FR
  (`rack_constitution_fr_send`) stays **held** per Operator review — the lone "dirty path" is that hold,
  not a durability gap.
