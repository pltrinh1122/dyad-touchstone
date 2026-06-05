# Ledger — cycle #34: nothing immutable but the sha → the write / create / edit trichotomy, and the gate lives at *create*

## Date
2026-06-05 PDT (parent snapshot 8cce508)

## Kind
`clip`'d — a substrate-grounded vocabulary + its consequence, converged through a chain of rubs
(summit/telos → all-substrate immutability → sha → DIP reconciliation → edit/write/create). Refines
[[htil-before-external-publish]] (gate-height-from-reversibility) and rides on #33's composable-G0
mechanism. Governs how saga's lineage-G0 is born.

## Foundation — nothing in our substrate is immutable except the sha
Swept the substrate: the Anchor evolves (it flags doubts about itself), the Climb mutates, `playbook.py`
grows, **memories are deleted when false** (cycle-30 ▽1), and even the **telos** is falsifiable (Commons
G0 #4) and the **summit** is held loosely (our single-home #5 flags live doubt about it). The append-only
ledger *looks* immutable but is a **self-imposed, falsifiable discipline** ("supersede, never rewrite",
cycle-30) — git permits rewriting; we abstain. **The only genuine immutability is content-addressing:
the bytes at a given sha cannot change** (cryptographic, not disciplinary). *Which* sha we trust is
mutable; the sha→bytes map is not. That single immutability is what makes everything else **safely**
mutable — it's the fixed reference `status-never-stored` re-derives against, and it's saga's
anti-false-legend anchor (pin every beat to `ledger-cycle @ sha`).

*Immutable-as-dogma would BE the failure the touchstone exists to prevent. The nearest fixed points are
the **manner** ("held falsifiably, never as dogma") and the **math** (content-addressing).*

## DIP reconciliation — the sha IS conception
Inheritance needs a fixed thing to inherit in a fully-mutable substrate; the sha supplies it. **The sha
is the conception event:** the child inherits the parent's genome *at a sha* (a snapshot), while the
parent keeps living and mutating. The DIP already encodes this — every directory entry carries a
`birth_hash: sha256:…`. **Inheritance is sha-pinned; becoming is DIP-lived.**

## The trichotomy (clipped) — all three grounded in the sha
| | what it is | sha | reversible |
|---|---|---|---|
| **write** | compose bytes (a draft) in the mutable working space | none yet | **yes** — discard freely |
| **create** | commit → new sha, **no prior pointer** (birth, additive) | mints one | **no** |
| **edit** | commit → new sha **advancing an existing pointer** off the old (supersession; old persists as provenance, cycle-30) | mints one | no |

**create and edit are both commits** (both mint a sha); they differ only by whether a prior pointer is
superseded. **write is the pre-commit compose both require.** You write → then *create* (if new) or
*edit* (if superseding).

## The consequence — the gate lives at *create*, not write
Care/gating concentrates where **reversibility ends = the sha.**
- **Write is cheap, reversible, pre-commitment** → it *should* be exploratory/emergent. Anti-priming is
  easy: a draft isn't binding, so nothing primes; the down-climb is free (discard).
- **Create is the one irreversible act** → the **deliberate cut + bloat-guard + freshness-test all live
  at the create** (the conception commit). This is `htil-before-external-publish` exactly:
  gate-height-from-reversibility.
- **Gate also scales with dependents:** create breaks nothing (newborn, no dependents) → minimum gate;
  **edit** modifies what dependents rely on → scales with sharedness; editing the **species genome** =
  Founding gate {FO}.

## Application to saga's spawn
- The entire **proxy-walk = gene WRITE** — mutable drafting of lineage-G0; emergent, exploratory, free.
- The **conception-sha commit = the single gene CREATE** — the one irreversible, deliberate, gated act
  (where the bloat-guard + freshness-test fire). lineage-G0 **emerges** (discovery) in the write, then a
  **deliberate commit-cut** (decision) creates it.
- **No EDIT** in the first spawn — nothing prior is superseded.
- **Invariant 1 binding:** *create = the parent's one-time conception act; edit = the genome-owner's later
  act on its own gene.* Saga edits saga thereafter (its children inherit saga's edits); a parent who
  re-edits the child's genome violates autonomy. **You create, then you teach.** The create→edit handoff
  *is* the birth boundary.

## What this leaves
Method settled: **emerge/write loosely → create deliberately at the conception sha.** Ready to begin the
proxy-walk (Dimension 1) as gene-write. *Un-refuted is not verified; the raising hasn't begun.*
