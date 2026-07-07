# Cycle 48 — dyad-rt: the runtime built, and the copied launcher's shine caught

> Session seam `d-reflect`. One pitch: implement the Dyad Runtime (dyad-rt) as a
> native-adaptation of dyad-cairn's runtime, triggered by `d-start` on a `bin/claude`
> copy-pasted from dyad-bond. Landed PR #25 → `main`. Its own new pre-push guard
> mediated the land (allowed the feature branch, would have refused a direct push to
> `main`) — the runtime dogfooded its own delivery.

## Harvest (proofs banked)

- **The runtime exists and the spine is verified.** `bin/claude` (native gate OFF) +
  the git-layer guard that becomes the authority in that mode:
  `dialectic/githooks/pre-push` → `dialectic/guards/main_history_guard.py`, which
  refuses a *local* push to `main` (direct/force/delete). **End-to-end verified this
  session** on a throwaway bare remote: refused `main`, allowed a feature branch,
  `--no-verify` escaped — all three as designed. Fires with the native gate off
  (git-layer, below the harness). Architecture + full provenance:
  `dialectic/design/dyad-rt.md`. **Status: LIVE, not yet a doctrine-proof** — zero
  real-world catches; the open test is the Rubbing `r48-dyad-rt-first-catch`.

- **Caught failure (the load-bearing one): a copied launcher asserted a safety envelope
  we did not have.** The `bin/claude` pasted from dyad-bond claimed *"`.githooks/pre-push`
  fires regardless of permission mode, so force/delete/direct push to `main` is still
  refused."* Rubbed against our actual substrate: we had **no `.githooks/` and no
  pre-push hook** — only a pre-commit anchor guard. So the launcher turned the native
  gate OFF while its own "main-history protection SURVIVES" line was **false**. The doc
  *shone* (fluent, plausible, sibling-sourced) and failed the *streak* (rubbed against
  real hooks). This is why the runtime's design law is **mechanical-over-compliance**:
  a protection that lives in a *description* is worthless; only the mechanism that fires
  is the guard. Building `main_history_guard.py` is what made the copied claim true.

- **Two smaller copy-artifacts caught + fixed the same pitch:** `bin/agy` (exec'd `agy`,
  cairn's substrate not ours — removed); `anchor_guard.py`'s `ANCHORS` set still named
  the pre-rename `AGENT.md` (→ `DYAD.md`, 2026-06-12), so it was guarding a file that no
  longer exists.

- **Anchor/provenance split lived cleanly.** On the Operator's steer ("DYAD.md has
  limited capacity — inject-tax; keep provenance separate"), the anchor got a lean
  ~18-line `§Runtime` *model*; the architecture/history went to
  `dialectic/design/dyad-rt.md`. Same discipline the memory index already names
  (invariants→anchor, provenance→separate). *Correction I made vs. the Operator's `Y`:*
  they said "ledger cycle-47" but that file was already committed (the gap_share arc) and
  the runtime isn't a rubbed-and-held *proof* yet — so provenance went to a design doc,
  not the Ledger. Surfaced, not silently redirected.

## What we deliberately did NOT build

Cairn's Neutral-Quarry ownership ABAC (`sandbox_enforcer.py`'s bulk) and its "route all
git/gh through PATH-shim wrappers" law. That machinery serves external-code commissions;
touchstone's craft is **nurture** (Commons / DM / lineage), and we run no external code
quarries. Native-adaptation, not port — the Operator's explicit `RT fidelity` call.
Also parked: the layer-4 context-steering shim (bypassable anyway; hook spine already
covers the irreversible step — minimum force, Inv I).

## CSS (Agent — craft / mechanism)

- **CONTINUE** — *rub the copied artifact against the real substrate before trusting its
  self-description.* The whole arc's value came from refusing to inherit bond's launcher
  header on faith — grounding "do we actually have `.githooks/pre-push`?" this-run
  (`ls`, not memory) is what surfaced the false envelope. Streak-over-shine, lived on a
  sibling's fluent doc.
- **CONTINUE** — *held the selection seat + surfaced the intent-fork instead of
  guessing.* The RT-fidelity fork (native-adapt vs port) was genuinely the Operator's;
  I gave a lean + recommendation and let them set it, rather than manufacturing a port
  the craft doesn't need.
- **START** — *when copying a sibling's mechanism, diff its asserted envelope against our
  substrate as step 0, before building on top.* The false-envelope launcher sat in `bin/`
  from the session's first act; a substrate-diff at paste-time (not at rub-time) would
  have flagged it immediately. The copied doc is a claim, not a fact — Ground it first.
- **STOP** — *don't let a `d-reflect`'s durability writes over-produce.* This Stand-Down
  weighed a Rubbing + a rack + a Ledger entry; the honest minimum-force check (Inv I) was
  "does restart actually lose this?" — yes for the rack (conversation-only) and the
  Rubbing (the pending-harvest trigger), so both earn their home; the design doc already
  carried the rest.

## SH (Operator — steering) — *yours to author; substrate surfaced only*

Left for you (not mine to form). Verbatim substrate if you want it, three steers that
shaped the arc: **(1)** *"reference dyad-cairn's remote git repo for architecture …
i want our own implementation"* — set native-adapt over port before I could over-copy.
**(2)** *"DYAD.md has 'limited' capacity because it's being injected in every prompt. i
recommend keeping provenance information separately."* — the split that kept the anchor
lean. **(3)** *"ensure durability for restart"* → *"d-reflect"* — the Stand-Down trigger.
Author the SH (or defer to next Stand Up) at your rest.
