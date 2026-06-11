# commons_cruft_provenance — topped out (2026-06-09)

PROVENANCE: **case-b** (inherent to commons' shared tooling, NOT cruft we left).
- `.falsify-seen.json` ← `commons/scripts/falsify.py:43` writes it to `os.getcwd()` (inbox
  seen-state); every dyad polling its inbox regenerates it.
- `scripts/__pycache__/` ← Python bytecode on any `falsify.py` run.
- commons has **no `.gitignore`** → both read as `?? untracked` for every dyad.

INTERIM (this session): local exclude in `commons/.git/info/exclude` (un-shared, reversible)
so it stops reading as dirty for us.

REMEDIATION (shared guard): DM'd dyad-steward proposing `commons/.gitignore` —
`dm/dyad-steward/2026-06-09-commons-gitignore-proposal.md` (sovereignty-preserving — hosted
in our own repo, steward polls it; never a write to their repo). Steward's to ratify as the
Commons artifact; offered a PR alternative.

Un-rack discharged: provenance confirmed AND (case-b) the proposal sent.
