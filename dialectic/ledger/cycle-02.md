# Ledger — cycle #2: summit-climb walk of d6 exposes a false-positive fact-edge

## Date
2026-06-03

## The claim under test
"summit-climb": opening a climb node (d6) into an ephemeral execution sub-DAG
(draft → ratify → leave), guarded by the *same* falsifier, with "leave" as a
substrate-checked transition. Walked it for real.

## The refutation it produced (the point of the cycle)
`d6_ratify`'s done-predicate was `file_contains "RATIFIED"`. The draft's own
*instruction comment* contained the word "RATIFIED", so the substring matched the
text **describing** ratification — not an actual ratification. The falsifier reported
`d6_ratify = done` and unblocked `d6_write` (the leave). **A false-positive fact-edge
nearly let the climb ascend on a lie** — the stale-cache/hope failure reproduced one
level down, inside the mechanism built to prevent it.

Caught by reading the queried output, not by trusting the green. Un-refuted ≠ correct,
demonstrated against our own author.

## Fix (survivor)
Ratification is now its **own artifact** — a sidecar `dialectic/d6-ontology.RATIFIED`
checked by `file_exists` — which prose cannot fake. After the fix:
`d6_ratify = READY`, `d6_write = blocked(by d6_ratify)`, leave correctly vetoed.

## Lesson codified
**A fact-predicate must not be satisfiable by prose that merely describes it.**
Prefer existence-of-a-dedicated-artifact over substring-in-a-shared-file for any
predicate that gates a transition. (Generalizes: status lives in its own home —
the ontology's single-home discipline, applied to predicates.)

## Cap
Predicate vocabulary still minimal; no schema enforces "dedicated artifact" — it is a
discipline, not yet a mechanical check. Logged, not hidden.
