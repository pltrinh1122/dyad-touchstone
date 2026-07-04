#!/usr/bin/env bash
# dialectic/standup.sh — dyad-touchstone Stand-Up / Sense automation (mechanical spine)
#
# BORROWED from dyad-bond (bin/standup.sh, K6 2026-06-13) and RECAST into the assayed-climb
#   register — references point, never copy (single-home #1). The register difference is
#   load-bearing: bond DIFFS each anchor file against a stored ROM-baseline sha in its
#   carry-forward ledger; touchstone STORES NO STATUS (single-home #2 — status is never stored,
#   only rubbed). So our Stand-Up spine is not a baseline-diff — it is the Sense ritual's own
#   deterministic half (master-spaor.md line 18): re-derive the frontier via the Touchstone
#   (never cache) · pull the inbox · durability · substrate probe.
#
# WHAT IT IS NOT: it does not JUDGE and it does not SELECT. The Touchstone refuses to select
#   among the frontier; committing the session-target (end-in-mind law) is the Operator's seat.
#   This SURFACES the this-run frontier, the inbox, the dirty tree — and hands disposition up.
#   Wired as a Claude Code SessionStart hook, `--hook` mode emits the result as additionalContext
#   so Sense loads the re-derived frontier at boot WITHOUT a narrate-from-cache. The hook runs
#   playbook.py THIS run, so the injected frontier is a this-run streak, not a stale shine.
#
# COVALENT GATE (DYAD.md D4): wiring this as a hook is installing automated self-behavior — the
#   Operator's act to APPLY, never an Agent self-grant. This script is authored by the Agent
#   (reversible mechanism); the .claude/settings.json wiring is the Operator's. Runnable by hand
#   regardless.  → dialectic/standdown-automation.md
#
# Usage:  dialectic/standup.sh          # human-readable Stand-Up report (stdout)
#         dialectic/standup.sh --hook   # emit SessionStart additionalContext JSON (hook body)

set -uo pipefail   # NOT -e: a dark inbox / missing commons must degrade to a WARN, never abort boot
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT" || { echo "standup.sh: cannot cd to repo root $ROOT" >&2; exit 1; }

lines=()
add() { lines+=("$1"); }

# ── Frontier — re-derive via the Touchstone, THIS run (the Sense core; never cache) ──────────────
# Touchstone's inversion of bond's ROM-baseline diff: we do not compare against a stored sha, we
# RE-COMPUTE the qualifying-terminal frontier by rubbing the Climb against the substrate this run.
if [[ -f dialectic/playbook.py ]]; then
  frontier="$(python3 dialectic/playbook.py 2>&1 || true)"
  if [[ -n "$frontier" ]]; then
    add "Touchstone (re-derived this run — python3 dialectic/playbook.py):"
    add ""
    add "$frontier"
    add ""
  else
    add "Touchstone: ⚠ playbook.py produced no output — run it by hand and read the frontier."
  fi
else
  add "Touchstone: ⚠ dialectic/playbook.py absent — ephemeral/partial checkout; frontier unavailable."
fi

# ── Inbox-catch (rack_inbox_catch) — refresh THEN poll; the parent's catch for a child's cry ─────
# REFRESH IS LOAD-BEARING (cycle-36 GAP): a stale registry can't SEE a newly-registered child, so
# the poll silently never looks at its repo. Surface only — DM processing is cloud Claude's job
# (memory: dm-processing-via-cloud-claude), never this local session; we HEAR here, we don't act.
if [[ -f commons/scripts/falsify.py ]]; then
  git -C commons pull --quiet 2>/dev/null || add "Inbox: ⚠ could not refresh commons registry (offline?) — poll may be stale."
  mail="$(python3 commons/scripts/falsify.py inbox --me dyad-touchstone 2>&1 || true)"
  unread="$(printf '%s' "$mail" | grep -oE '[0-9]+ unread' | grep -oE '[0-9]+' | head -1 || true)"
  unreach="$(printf '%s' "$mail" | grep -oE 'unreachable: [0-9]+' | grep -oE '[0-9]+' | head -1 || true)"
  msg="Inbox: ${unread:-0} unread DM(s)"
  [[ -n "${unreach:-}" && "$unreach" != "0" ]] && msg="$msg · ⚠ ${unreach} UNREACHABLE source(s) (a clean inbox is NOT 'no mail from everyone')"
  msg="$msg — surface only; DM work routes to cloud Claude, not here."
  add "$msg"
else
  add "Inbox: ⚠ commons/scripts/falsify.py absent — cannot poll; a descendant's cry may be unheard."
fi

# ── Memory-durability (uncommitted/unpushed = ungrounded memory; the standing substrate threat) ──
dirty="$(git status --porcelain 2>/dev/null || true)"
branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo '?')"
unpushed="$(git log --oneline '@{u}..' 2>/dev/null | wc -l | tr -d ' ' || echo 0)"
if [[ -n "$dirty" ]]; then
  add "Durability: ⚠ working tree DIRTY on \`$branch\` ($(printf '%s\n' "$dirty" | wc -l | tr -d ' ') paths) — commit before relying on the substrate as memory."
elif [[ "$unpushed" != "0" ]]; then
  add "Durability: ⚠ $unpushed unpushed commit(s) on \`$branch\` — push so the remote backs the memory (always-publish-pitch)."
else
  add "Durability: ✓ clean + in sync on \`$branch\`."
fi

# ── Substrate probe (durable home, or an ephemeral clone? are the Commons tools present?) ─────────
home_ok=0; gh_ok=0; falsify_ok=0
[[ -d /mnt/shared_data/dzw ]] && home_ok=1
command -v gh >/dev/null 2>&1 && gh_ok=1
[[ -f commons/scripts/falsify.py ]] && falsify_ok=1
if ((home_ok && gh_ok && falsify_ok)); then
  add "Substrate: ✓ durable home + gh + commons/falsify.py present → full-substrate session."
else
  miss=()
  ((home_ok))    || miss+=("no /mnt/shared_data/dzw mount")
  ((gh_ok))      || miss+=("no gh")
  ((falsify_ok)) || miss+=("no commons/falsify.py")
  missjoin="$(printf '%s, ' "${miss[@]}")"; missjoin="${missjoin%, }"
  add "Substrate: ⚠ ephemeral/partial ($missjoin) — some Stand-Up checks degraded this session."
fi

# ── Output ───────────────────────────────────────────────────────────────────────────────────────
header="dyad-touchstone Stand-Up (dialectic/standup.sh) — Sense's mechanical spine, re-derived this run.
Load the Anchor (DYAD.md); the frontier below is the Touchstone's this-run verdict — confirm role + channel,
then COMMIT THE SESSION-TARGET (end-in-mind: its done_when is the Stand-Down trigger). The falsifier refuses
to select — that is the Operator's seat."
body="$(printf '%s\n' "$header" '' "${lines[@]}")"

if [[ "${1:-}" == "--hook" ]]; then
  CTX="$body" python3 - <<'PY'
import json, os
print(json.dumps({"hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": os.environ["CTX"],
}}))
PY
else
  printf '%s\n' "$body"
fi
