# Ledger — cycle #24 (retro / OPERATOR-STOP #3): don't assume the Agent shares your mental model of a load-bearing mechanism

## Date
2026-06-04

## Kind
OPERATOR-STOP — the **third instance** (after cycle-20 #1, cycle-23 #2), raised by the Operator
themselves at a `retro:`, generalizing from a lived mismatch this session (rack ordering). Pairs with a
**CONTINUE** (the stack/LIFO model was the right call — already clipped to the Rack-protocol this cycle).

## What was clipped (the OPERATOR-STOP)
**The Operator commits to stop assuming the Agent's shared mental model includes a mechanism — where
that mechanism is load-bearing — without explicitly aligning.** Lived trigger: the Operator carried
"rack = stack / LIFO" as an unstated assumption that silently governed what "the rack" / "the last
racked" / "refine the rack" resolved to. It was never in the substrate (Rack-protocol specified no
ordering) and never aligned with the Agent.

## The why
- **An unaligned load-bearing mechanism is a latent mismatch that only works by luck.** This session it
  happened to work because the Agent *inferred* LIFO and the inference matched — but "refine the rack"
  under a queue/FIFO reading would have pointed at a different node. Correctness rode on a coincidence of
  models, not a shared one.
- **Mirror of cycle-20.** cycle-20: the Operator fires a gate with *no* model (model absent). cycle-24:
  the Operator acts on a model *assumed shared* (model present but undisclosed). Both are "model"
  failures; this is the disclosure side.
- **Correctly scoped to load-bearing.** Not every mechanism needs explicit alignment — only ones where a
  mismatch would be costly (wu-wei: align-cost scaled to load-bearing-ness, same shape as the
  htil gate-height-from-reversibility rule).

## The bilateral mirror (Agent-side, cycle-21)
**Agent-side STOP:** I acted on the *inferred* load-bearing mechanism (LIFO) without surfacing the
inference for alignment — the Operator had to surface "(assuming rack is a stack…)" themselves. The
remedy is `rack_intent_levers` **lever 1**: surface an inferred load-bearing mechanism as a *falsifiable
assumption* ("I'm reading rack as LIFO — confirm?") before acting on it. Both seats failed to make the
mechanism explicit until it nearly mattered.

## Cross-links
- Concrete instance of **`rack_intent_levers`** (lever 2: disclose, don't assume; lever 1: falsifiable
  hypothesis) — the intent-understanding investigation, lived.
- **Resolved into the substrate same-cycle:** rack ordering is now LIFO, clipped to AGENT.md
  Rack-protocol (cycle-24). The mechanism is no longer unaligned.

## Lesson codified
A load-bearing mechanism held in one seat's head is not shared until it is disclosed. Don't assume the
other seat's model includes it — surface it (Operator) / surface the inference of it (Agent), scaled to
how load-bearing it is. The unaligned LIFO assumption was caught cheaply this time; the STOP is to not
rely on the catch.
