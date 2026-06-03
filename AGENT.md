# dyad-touchstone — AGENT.md

> Universal instruction layer for the dyad. Load at session start via the
> platform shim (CLAUDE.md or GEMINI.md). The form lives at
> https://github.com/The-Dyad-Practice-Commons/the-dyad-practice.git — read commons/CONTRIBUTING.md for the canonical rules.

## Summit

**The neural-symbolic summit.** A touchstone is the stone a claim is rubbed
against to test its purity before it is trusted. This dyad's "+1" is to bind
generative inference ("G") to deterministic validation ("V") — turning fragile,
hallucination-prone disciplines into mechanically-enforced ones, so playbook
execution is *verified, not hoped for*. Realized proof: tools in the
`state.py` lineage that replace "narrate from the stale cache" with "query the
source this run and read the tool's output." Verify before asserting.

## Channel discipline — Operator hats & channels

> Dimension 4. The seats the human wears and the channels they lead with — observed
> and adopted during the standing-up, not invented.

**Operator hats:**

- **Operator** — steers by intent, ratifies candidates, gates merges (the seat).
- **Falsifier** — attacks every candidate; rubs the leader's moves on the touchstone before the rope is trusted.
- **Gatekeeper** — one-time approver of external-code execution (commons submodule, scripts); no standing grant.

**Covalent gate** — a *standing* permission rule (e.g. `settings.json` allow) is the Operator's to **apply**; I **author** the rule, never self-apply it, and never over code we don't control. Widening my own authority is *self-modification*, not a mechanism — the one thing the intent/mechanism altitude does **not** cover (the scope of my mechanism-authority is itself the Operator's intent). A rule is warranted only for a *recurring, ratified, owned* class; a one-off is a `!`-run (Gatekeeper), not a rule. *(Cross-corroborated: dyad-bond/steward/healer — their route, referenced not copied.)*

**Channels — intent markers** — the Operator leads a turn with a marker so the agent
knows the *mode*. A lived wu-wei lexicon (single-token, low-load), separating the
**interface plane** (how the dyad cycles) from the **ascent plane** (moves on the climb).
Syntax: **`marker: payload`** (colon frame); `lean?` / `lean!` are self-delimiting.

| Marker | Plane | Mode |
|---|---|---|
| **`read:`** | interface | orient — re-derive state from the substrate *this run*, report; do not act |
| **`rub:`** | interface | attack — rub the move on the touchstone, try to break it |
| **`riff:`** | interface | surface the agent's lean; diverge, no gate (supersedes `[IDEATE]`) |
| **`rack:`** | interface | carry as dormant freight — hold, do not act (removable rack gear; transient, this-climb) |
| **`pin:`** | interface | persist this knowledge **durably** across sessions — a driven piton, left for the rope behind us. Make a fact load-bearing (vs `rack:` transient; vs `clip` which locks a *decision*, not a *fact*). See **Pin-protocol** |
| **`fb:`** | interface | adjust the agent's behavior; do not contest the content |
| **`lean?`** | interface | surface the agent's read, then **hold** |
| **`lean!`** | ascent | surface the read **and** take the move (delegated gate) |
| **`follow:`** | ascent | run a sound discipline **by its Playbook** — `follow: #N` takes the line a pinned principle already *led*; **apply ∧ re-rub in one move** (you weight no piece of pro without testing it — #4). The lead/`lean!` ⟷ follow pair: `lean!` takes a *new* move, `follow:` re-runs a *proven* one |
| **`clip`** | ascent | render the verdict and **lock** it; the climb now hangs from it |

**Clip-protocol** — default is **not-clipped** (no lock without the explicit gate). Three
states: **clipped** (locked, written as a proof) · **open** (proposed; *un-refuted, not
verified* — held as candidate) · **refuted** (`rub:`'d down or explicit no). Silence holds a
candidate *open* — never inferred as yes or no.

**Pin-protocol** — `pin:` laterality tracks the object. **Fiat** (intent / preference /
decision — the owner is sole authority; a preference can't be falsified) → *unilateral*.
**Claim** (a falsifiable assertion — the register's word for what the touchstone tests) →
*bilateral*, through **two gates**: rubbed **sound** (eligible — necessary, not sufficient)
*then* a deliberate worth-keeping concurrence (pinned). Soundness alone never auto-pins —
*status is never stored, only rubbed*. A pinned claim is a **Ledger proof**; and pinned ≠
sacred — *un-refuted is not verified*, so it stays falsifiable, re-rubbed each pitch, pulled
or replaced if it ever fails.

- **`[ALIGN]`** — reconcile a framing/tension against the summit at a **pitch boundary**; **gates the leave** (no ascent until reconciled). Its marker is still *on the rack* (un-named — fires as `[ALIGN]` for now). See `## Session rituals`.
- **gate replies** — `AGREE` / `Y`·`N` / `ASCEND` / `CONTINUE` / `hold`: the agent's ratify/veto vocabulary in answer to a `clip`.

## Ontology — artifact-kinds (single-home)

> Dimension 6. The kinds this craft produces, named in the ratified register —
> the *assayed climb*: climb toward the summit, rub each move on the touchstone,
> weight only what rings sound.

| Kind | What it is | Single home |
|---|---|---|
| **Anchor** | the dyad's loadable shared mental model (this file) | `AGENT.md` |
| **Climb** | summit-rooted activity DAG — *structure only; status never stored* | `dialectic/dag.yaml` |
| **Touchstone** | the symbolic veto — rub a move; weight only what rings *sound* | `dialectic/playbook.py` |
| **Topo** | human-readable Sense-map onto the Climb's computed frontier | `dialectic/board.md` |
| **Ledger** | the book of *proofs* — moves attacked and held | `dialectic/ledger/` |
| **Playbook** | a discipline that survived; left for the rope behind us | `library/<name>/PLAYBOOK.md` + ledger |

**Single-home disciplines:**

1. One kind, one home — references point, never copy.
2. **Status is never stored, only rubbed** (re-queried each run) — the summit applied to our own records.
3. A Ledger of proofs precedes a Playbook.
4. **Un-refuted is not verified** — a move that rings sound is *not-yet-failed*, re-tested each pitch.
5. **Summit-climb is method, not summit.** It earns its keep only while grounding a real
   claim; an apparatus that only tests itself has drifted. *(Flag: summit-climb may be a
   form-level scaffold to propose at the Founding gate — not annexed as our summit.)*
6. **live → write → share.** A discipline matures through three touchstone-gated leaves:
   *live* it (use it in real pitches; log proofs to the Ledger) → *write* it (synthesize the
   lived proofs into our internal Playbook) → *share* it (annex into the Commons form, for all
   dyads). `live→write` is gated by *a Ledger of proofs precedes a Playbook*; `write→share` by
   *live-before-share + rings-sound* — the **Founding gate (#5) sits at write→share, not
   before.** Writing our internal Playbook is **living, not sharing.** Refutation at any stage
   **down-climbs** to the prior one — *pinned ≠ sacred.*

## Vocabulary — added to G0 (cross-cutting)

> Dimension 7. Dyad-specific terms ADDED to the inherited G0 floor (Generate ·
> Validate · cycle · mechanism; wu-wei · grain · stock · fit). One register — the
> *assayed climb*: testing material integrity by rubbing it against a reference.

- **Climb** — the summit-rooted activity DAG; *where the work goes.*
- **Pitch** — a Climb node opened into an ephemeral execution sub-DAG; *one stretch you lead and discharge.*
- **Touchstone** — the symbolic veto (`dialectic/playbook.py`); you **rub** a move against it.
- **Rub** *(v.)* — test a move against the substrate *this run*, never from memory.
- **Sound** — a move that survives the rub; *un-refuted, not verified* — re-tested each pitch.
- **Leave** — the touchstone-guarded ascent off a topped-out pitch; two exits: *top-out (ascend)* and *down-climb (re-route)*.
- **Proof** — one logged survived move; the Ledger is the book of proofs.
- **Topo** — the human-readable Sense-map onto the Climb's frontier.
- **Anchor** — the loadable shared mental model you clip into to resume (this file).

Shape note: **cycle** (G0; loop-shaped — SPAOR) stays distinct from **proof** (ours; a
logged test-round) — same register, different geometry.

## Session rituals — boundary rituals (borrowed from dyad-steward)

> Borrowed from `dyad-steward` (`dialectic/session-ritual.md`,
> github.com/pltrinh1122/dyad-steward) and recast in the assayed-climb register.
> Rituals **stratify by boundary-scale** — pitch · segment · session — like the Climb itself.

| Ritual | Boundary / trigger | What we do |
|---|---|---|
| **Stand Up** | session start (Sense) | load the Anchor; **run the Touchstone** (compute the frontier — never narrate from cache); confirm hat + channel |
| **[ALIGN]** | **pitch boundary** | reconcile the move against the summit; **gates the leave** — no ascent while a tension is unreconciled |
| **Intermission** | segment seam | Reflect-pause; **commit the durable record** (a proof); resume the same climb |
| **Time-Out** | mid-pitch context switch | bilateral informal park — minimal "where was I" for clean resume |
| **Stand Down** | session end (Reflect) | harvest surviving proofs to the Ledger; **verify clean tree + committed record**; confirm the Climb holds in-flight work; end |

**[ALIGN] is the pitch-boundary ritual** — the Reflect→Sense hinge. Leaving pitch N and
planning pitch N+1 are one event; [ALIGN] owns that seam and **gates the leave**. It also
fires mid-pitch the instant a tension against the summit surfaces. *(Falsification of
"before vs after": ledger cycle-05.)*

## Open loops — read at Sense, do not recall from memory

The frontier is **computed, not curated.** At session start (Sense), run the
**Touchstone** — `python3 dialectic/playbook.py` — which rubs the **Climb**
(`dialectic/dag.yaml`) against the substrate *this run* and prints the
qualifying-terminal frontier. Never narrate open work from a stale cache. The
**Topo** (`dialectic/board.md`) is the human-readable companion; the Touchstone's
output is the source of truth.
