# Rubbing `r48-dyad-rt-first-catch` — does mechanical-over-compliance earn its keep?

> **Kind:** Rubbing — an open test-in-progress; the live twin of a Ledger Proof. Opened cycle-48 (2026-07-07).
> **Status:** OPEN — *derived, not stored* (closes when its verdict harvests to the Ledger).
> **Self-contained:** everything needed to assess this lives here — do NOT load the whole ledger to ground on it.
> **Firewall (mild here):** the subject is a *mechanical* guard, not an Agent disposition, so Sense-surfacing does not
> prime the verdict the way `r39-cold-induction` would. Assess at Reflect all the same — the datum is a wild event.

## Claim under test
dyad-rt's design law — **enforcement = mechanical git-layer hooks, NOT agent compliance** (the deliberate inversion
of cairn's "route all git/gh through wrappers") — is the *right* runtime for touchstone. Verified in **mechanism**
(the pre-push guard fires; e2e-tested cycle-48), but **not yet in value**: has it ever caught a *real* mistake — a
genuine erroneous local push to `main`, a force-push, a branch-delete — that the native-gate-OFF mode would otherwise
have let through?

## Why it's open (the confound)
A guard that has never fired in the wild is *un-refuted, not verified* (single-home #4). Its e2e test proves it CAN
fire on a synthetic input; it does not prove the design pays for itself in real use. The competing hypothesis the
Rubbing must survive: **the guard is dead weight** — with `bin/claude` rarely used, or the Agent never actually
erring toward a direct `main` push, mechanical enforcement adds ceremony without ever earning a catch, and a lighter
compliance-note (cairn's route) would have sufficed.

## Falsification method (telemetry accrues across runs)
Datum = **a wild guard event**, logged as it happens. Each reading (`rubbings+`) appends:
- **A real catch** (guard refused a push the Operator/Agent genuinely intended-but-shouldn't-have) → evidence FOR the
  design. N such catches → the claim rings sound → **harvest to Ledger as a Proof**, promote dyad-rt from LIVE→ toward
  doctrine, and the design doc's "candidate, not doctrine" tag lifts.
- **A false block** (guard refused a *legitimate* action, forcing `--no-verify` on a push that was fine) → evidence
  AGAINST — the gate sits at the wrong step (Inv I over-force). One clean false-block down-climbs the design.
- **Sustained non-firing** while `bin/claude` sees real use → the *dead-weight* horn; re-rub whether the mechanical
  layer beats a compliance-note for our actual usage.

## Readings
*(none yet — opened this session; the guard has fired only on synthetic e2e inputs, which do not count as wild data)*

## Un-rack / resolve
When the telemetry sets one way — first real catch (FOR), first false-block (AGAINST), or a decisive dead-weight
stretch — `clip` the verdict to the Ledger as a Proof and lift or lower dyad-rt's maturity accordingly.
