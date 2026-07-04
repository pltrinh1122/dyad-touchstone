#!/usr/bin/env bash
# dialectic/standdown.sh — dyad-touchstone Stand-Down / Reflect ritual (mechanical spine + template)
#
# BORROWED from dyad-bond (bin/standdown.sh, K6 2026-06-13) and RECAST into the assayed-climb
#   register. The Stand-Down has a MECHANICAL half (deterministic → automate) and a JUDGMENT half
#   (harvest + CSS+OR — the dyad's covalent act, NOT automatable). Touchstone's Stand Down is fired
#   by the typed marker `d-reflect`, ONE act with TWO outputs (master-spaor.md line 22):
#     · HARVEST — bank survived proofs to the Ledger (the work / ascent plane)
#     · CSS+OR  — Continue/Start/Stop craft-retrospective (the craft / interface plane)
#
# TRIGGER — no new fiat. Bond had to MINT `clip` as its stand-down trigger; touchstone already has
#   `d-reflect` (DYAD.md §Session rituals + master-spaor.md). A typed marker fires on ANY substrate
#   (mobile included), unlike /exit. The Agent runs THIS script at `d-reflect` and reads the template.
#
# HOOK BOUNDARY (verified against the Claude Code hook contract — bond's finding, re-inherited): a
#   SessionEnd hook is TEARDOWN-ONLY (fires after the agent is gone, cannot inject context back) and
#   Stop fires every turn-end (cannot mean "stand-down"). So the JUDGMENT write CANNOT be hook-fired.
#   Therefore: the AGENT runs this at `d-reflect`; a SessionEnd hook may run it `--log` for the
#   mechanical durability line only (a teardown debug line; its stdout fate is substrate-dependent
#   and may be inert on cloud — zero write-risk either way). auto-trigger != auto-judgment.
#
# COVALENT GATE (DYAD.md D4): wiring the SessionEnd hook is the Operator's act to APPLY, never an
#   Agent self-grant.  → dialectic/standdown-automation.md
#
# Usage:  dialectic/standdown.sh         # mechanical checks + the Stand-Down template (Agent runs at d-reflect)
#         dialectic/standdown.sh --log   # mechanical line only (SessionEnd hook body; output is teardown-log)

set -uo pipefail   # NOT -e: a degraded probe must not abort the close
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT" || { echo "standdown.sh: cannot cd to repo root $ROOT" >&2; exit 1; }

# ── Mechanical: durability (the standing substrate threat — unpushed history is ungrounded memory) ─
dirty="$(git status --porcelain 2>/dev/null || true)"
branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo '?')"
unpushed="$(git log --oneline '@{u}..' 2>/dev/null | wc -l | tr -d ' ' || echo 0)"
dur_line="clean + in sync on \`$branch\`."
[[ -n "$dirty" ]] && dur_line="⚠ DIRTY on \`$branch\` ($(printf '%s\n' "$dirty" | wc -l | tr -d ' ') paths) — commit + push so the memory is grounded."
[[ -z "$dirty" && "$unpushed" != "0" ]] && dur_line="⚠ $unpushed unpushed commit(s) on \`$branch\` — push (always-publish-pitch)."

# ── Mechanical: what is STILL OPEN — re-derive the frontier so the close knows what carries ────────
# Touchstone stores no status; the "what carries" line is re-computed, not read from a cache.
open_line="frontier unavailable (playbook.py absent — ephemeral checkout)."
if [[ -f dialectic/playbook.py ]]; then
  fr="$(python3 dialectic/playbook.py 2>/dev/null | sed -n '/QUALIFYING-TERMINAL FRONTIER/,/^$/p' | grep -c '→ ' || echo '?')"
  open_line="$fr qualifying-terminal item(s) still on the frontier (re-derived this run) — see \`python3 dialectic/playbook.py\` for the full read + RACK."
fi

mech="$(printf '%s\n' \
  "dyad-touchstone Stand-Down — mechanical:" \
  "  Durability: $dur_line" \
  "  Still open: $open_line")"

if [[ "${1:-}" == "--log" ]]; then
  printf '%s\n' "$mech"
  exit 0
fi

cat <<TEMPLATE
$mech

dyad-touchstone Stand-Down — JUDGMENT (the dyad's covalent act; auto-trigger != auto-judgment):
  \`d-reflect\` = ONE act, TWO outputs. Run BOTH; keep each LEAN (the Ledger is the book of proofs,
  not a journal — a proof is one logged survived move, not a session diary).

   1. HARVEST (the work → Ledger, dialectic/ledger/). Bank ONLY moves that were actually RUBBED and
      HELD this session. A candidate that is un-refuted-but-untested is NOT a proof — it stays an
      open clip-candidate or a Rubbing (dialectic/rubbings/), not a Ledger entry. Un-refuted != verified.
   2. CSS+OR (the craft → the retrospective). Continue / Start / Stop on HOW we climbed; tag a
      CONTINUE as OR (Operator-Reflect) when it credits the Operator's own conduct, not Agent-observed.
      START/STOP feed from any \`fb:\` this session. See dialectic/reflection-protocol.md for the form.
   3. without-you (the inter-session handoff law): leave the substrate so the next mortal loop
      reconstitutes by RE-DERIVING, not by trusting a cache. Present Fresh / Frozen / Flagged; do not
      store status the Touchstone re-computes (single-home #2).
   4. Climb integrity: confirm dialectic/dag.yaml holds any in-flight work as a node (a rack that
      lives only in this conversation is lost on restart — durability is a substrate single-home).
   5. Durability (above): commit + push before stepping away — unpushed history is ungrounded memory.
TEMPLATE
