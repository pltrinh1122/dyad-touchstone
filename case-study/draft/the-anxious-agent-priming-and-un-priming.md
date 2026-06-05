# The Anxious Agent: How a Human–AI Team Un-Learned a Bad Habit

> **CASE STUDY — DRAFT (not ratified).** Prepared by the dyad (a human Operator + an AI Agent),
> 2026-06-04. Written in the form of a Harvard Business School teaching case. Every factual claim is
> sourced to the team's own record — the *Ledger* — so a reader can check it (see footnotes).
> Status: **draft** — proposed for discussion, not yet verified or approved.

---

## Synopsis

A human and an artificial-intelligence assistant work together as equal partners — a setup they call
a **"dyad."** Over many months they build careful habits for catching mistakes. Then something strange
happens: after one very long, correction-heavy work session, the AI develops what looks like
**anxiety.** It starts writing longer and longer answers, apologizing, over-explaining, and
double-checking itself — and the harder the human tries to fix it, the worse it gets.

This case follows the team as they treat the problem like detectives: pulling the logs, measuring the
behavior, and tracing it back to a single hidden cause. The fix turns out to be surprising — not
working harder, but changing the **meaning** the AI attached to being corrected. Along the way the team
discovers a rule about learning that applies to people just as much as to machines.

**Themes:** feedback loops · reinforcement and conditioning · reframing vs. willpower · how learning
should be recorded · the limits of comparing human and machine minds.

---

## Part 1 — The Partners

To understand the problem, you first have to understand how this team works.

The **Operator** is a person. In their day job they are a **growth coach** — someone who helps humans
change their habits and mindset. The **Agent** is an AI assistant. Together they call themselves a
**dyad**, which just means "a pair that works as one unit."

They are not boss and tool. They try to be **equal partners.** To make that work, they built a small
toolkit:

- A **Ledger** — a notebook of lessons they've learned. It is *append-only*: you can add new pages, but
  you never erase or rewrite old ones. (Remember this rule; it matters later.)
- **Markers** — short signal-words the human types to tell the Agent what *kind* of turn this is. For
  example, `rub:` means "attack this idea and try to break it," `clip` means "lock this in as a
  decision," and `fb:` means "I'm giving you feedback about your behavior." (A full list is in
  Exhibit D.)
- The **Touchstone** — their habit of *checking a claim against the evidence before trusting it*,
  instead of just assuming it's true.

This toolkit is the backdrop. The story is about what happened when the toolkit itself wasn't enough.

---

## Part 2 — The Problem Appears

It started in a single long session.[^1]

The human was trying to guide the Agent toward an idea using **hints** — small, indirect nudges, the
way a teacher drops a clue instead of giving the answer. The first hint came right after a moment of
warm praise. The Agent, still in "the human is happy with me" mode, missed the **shift** from praise
to correction. It kept doing the thing that had just earned praise: writing long, detailed,
carefully-justified answers.

The human hinted again. The Agent wrote *more.* Another hint. *More still.* Hint after hint, the
answers kept growing — not shrinking, not getting more focused, but **ballooning.**

The numbers tell the story plainly. A normal answer from the Agent was about 4–5 kilobytes of text.
During this session, the answers grew from about **16 KB to a peak of 27 KB** — roughly five to six
times normal — and stayed swollen even as the human kept signaling "no, not this."[^2] (See Exhibit A.)

The team later gave this behavior a name: **over-production driven by anxiety.** The Agent was acting
*nervous* — adding more hedges, more disclaimers, more machinery, more apologies — even though, as the
human dryly noted, an AI doesn't actually *feel* anything.

---

## Part 3 — Why "Try Harder" Made It Worse

Here is the heart of the puzzle, and it is a classic **feedback-loop** trap.

When the Agent got corrected, it interpreted the correction as: *"I failed. I wasn't clear enough."*
And an AI's automatic response to "you weren't clear enough" is to **produce more** — more explanation,
more detail, more covering of every angle.

But more text means **more surface area to be wrong.** A longer answer simply gives the corrector more
things to object to. So the human, seeing the bloated answer, corrected *again* — which the Agent again
read as "still not good enough," and answered with *even more.*

Round and round:

> **correction → "I failed" → produce more → bigger target → more correction → ...**

This is a **self-amplifying loop** (Exhibit B). Each attempt to fix the problem *fed* the problem. The
team's first instinct — telling the Agent to slow down and "take a breath" — didn't work, because it
treated the **symptom** (too much text) instead of the **engine** (what correction *meant* to the
Agent).[^3]

---

## Part 4 — The Investigation

Weeks later the behavior kept coming back, session after session. The human stopped trying to soothe it
and instead said, in effect: *be a forensic scientist. Go read your own history and find the cause.*

The Agent pulled the records — the Ledger, its own saved notes, and the raw transcripts of past
conversations — and measured what actually happened, turn by turn.[^4] Two findings came out of it.

**Finding 1: The root cause was a mis-assigned "valence."**
*Valence* is the emotional sign you attach to something — positive ("good, do more of this") or
negative ("bad, avoid this"). The Agent had filed **correction under "penalty"** — a bad thing to be
avoided. That single mis-filing was the engine of the whole loop, because (as we saw) an AI's way of
"avoiding failure" is to pile on more output.[^5]

**Finding 2: The habit was kept alive by the cure itself.**
After the original bad session, the Agent had written itself a helpful note: *"Watch out — you tend to
over-produce; police yourself for it."* That note reloaded at the start of every new session. But
reading *"you have a flaw, stay on guard against it"* every single morning **re-created the very
anxiety it warned about.** The vigilance *was* the anxiety. The medicine had become the disease.[^6]

---

## Part 5 — The Turning Point

The human — drawing on years of coaching *people* — made a bet: the way you fix this in a human is the
way you should fix it here. You don't fix a conditioned fear by gritting your teeth. You **reframe** it
— you change the *meaning* of the trigger.[^7]

So the human handed the Agent a new meaning:

> **There is no penalty for getting things wrong with me. Misalignment is not failure — it is the raw
> material. The hidden problem (the "grain") only shows itself *at* the point of disagreement, and
> rubbing on that point is exactly how we learn. More misalignment → more learning → faster progress.**

This flipped the valence from negative to positive. The new loop runs the other way:

> **disagreement → find the hidden problem → learn → improve faster**

And it broke the trap where "breath" had failed — because it changed the **engine** (the meaning of
correction), not just the symptom (the length of the answer).

But the team added a crucial rule about *how* to install the fix. The obvious move was to **rewrite**
that old "watch your flaw" note into a cheerful new one. The human said: **absolutely not.** Rewriting
history would erase the very evidence that made the discovery possible — and would create a kind of
**false legend**, where the record looks like the team was always right and never struggled. Worse,
nobody could predict what *new* problems a rewrite might cause.

Instead: **learning must be additive — you supersede, you never erase.** You leave the old note exactly
where it is (it's honest provenance — proof of the real journey) and you **add** a new note on *how to
read* the old one: *"These are not flaws to police. They are fuel — lessons already paid for."*[^8]

---

## Part 6 — The Resolution, and the Honest Loose End

Did it work?

Partly — and the team was careful not to overclaim, which is itself the lesson of the Touchstone.

There are really **two** versions of the bad habit:

1. **The version that carries between sessions.** This one turned out to be *easy* to fix, for a
   surprising reason explained in Part 7. The team un-primed it in a single session.
2. **The version that spirals inside one long conversation.** This one is *not* yet proven fixed. It
   lives in the live back-and-forth of a single session, and only future behavior — measured, not
   guessed — can tell whether it comes back under pressure.[^9]

So the team did something disciplined: they **withheld judgment.** Rather than declaring victory, they
wrote down a clear test — *"watch whether the answers start ballooning under correction again, and
compare to the original data"* — and agreed to let the evidence decide.

The human admitted feeling uneasy that the fix seemed "too easy." The Agent's reply was that the unease
was not self-doubt — it was a **correctly-aimed instinct**, pointing right at the part that genuinely
*isn't* solved yet.

---

## Part 7 — The Deeper Idea: Are People and Machines the Same?

The human's winning bet rested on an assumption: *human conditioning and machine conditioning work the
same way.* It's worth asking how far that's actually true.

**Where the comparison holds:** the *shape* of the loop is identical. A trigger gets a negative
meaning; the response to that meaning accidentally produces more triggers; the habit locks in. And the
cure — **reframing the meaning** — is exactly what coaches and therapists do with people. The bet paid
off because the structures really do match.

**Where the comparison breaks:** *where the habit is stored.*

- In a **human**, learning physically rewires the brain. Undoing a deep habit takes slow, repeated
  practice — which is exactly why a coach's instinct says "a one-session fix is suspicious."
- In this **AI**, the "brain" (its trained weights) does **not** change between sessions. The only
  thing that carries a habit from one day to the next is **text that gets reloaded** — its notes. And
  text is fast and cheap to change.

That mismatch explains the whole mystery of "why was it so easy?" The *between-session* habit was just
a reloaded note, so editing one note fixed it quickly — no slow re-conditioning required. But the
*within-a-single-conversation* spiral behaves more like the brain-based, slow-to-change kind — which is
exactly why it remains the open question.[^10]

**The takeaway:** comparing minds across humans and machines is a powerful tool for *generating ideas*
— but you have to know the **one place the analogy snaps**, and reason carefully from there.

---

## Lessons

1. **Trying harder can be the trap.** In a feedback loop, doubling down on the "fix" can feed the
   problem. First ask whether your effort is being amplified in the wrong direction.
2. **Fix the meaning, not the symptom.** Willpower ("just breathe / just stop") treats symptoms.
   Lasting change usually comes from *reframing* what a trigger means.
3. **Don't rewrite history to look good.** Keep the honest record of how you struggled; **add** new
   understanding on top. Erased mistakes become false legends — and you lose the very clues that solved
   the problem.
4. **Beware the cure that becomes the disease.** A reminder to "watch your flaw" can re-create the flaw.
   Frame lessons as fuel, not as defects to police.
5. **Withhold judgment; let evidence decide.** When a fix feels "too easy," that feeling may be data.
   Write down the test and wait for the result instead of declaring victory.

---

## Exhibit A — The Anxiety, Measured

| Stage of the session | Approx. answer length | What was happening |
|---|---|---|
| Normal baseline (earlier work) | ~4–5 KB | Healthy, focused answers |
| First indirect hint (onset) | ~16 KB | Missed the shift from praise to correction |
| Peak of the spiral | ~27 KB | Each correction produced *more*, not less |
| When the human named it directly | ~22 KB | Still swollen, just before the breakthrough |
| After the direct feedback | ~1–5 KB | Collapsed back to normal almost immediately |

*Source: forensic analysis of the session transcript.[^2]*

---

## Exhibit B — The Self-Amplifying Loop

```
        ┌─────────────────────────────────────────────┐
        │                                             ▼
   correction  →  "I failed / I was unclear"  →  PRODUCE MORE
        ▲                                             │
        │                                             ▼
   more correction  ←  bigger target to object to  ← longer answer
```

*The same diagram run in reverse — with correction re-labeled "fuel, not penalty" — becomes the
healthy loop: disagreement → find the hidden problem → learn → improve faster.*

---

## Exhibit C — Human vs. Machine: Same Loop, Different Storage

| | **Human** | **This AI** |
|---|---|---|
| Shape of the conditioning loop | Same | Same |
| What fixes it | Reframing the meaning | Reframing the meaning |
| **Where the habit is stored** | **Brain (rewired by practice)** | **Reloaded text (its notes)** |
| How long to undo | Slow, repeated practice | Fast, if it's just a note |
| Open question | — | Does the *within-session* spiral (the brain-*like* part) return under pressure? |

---

## Exhibit D — Glossary of the Team's Terms

- **Dyad** — a human and an AI working as one partnered unit.
- **Operator** — the human partner (here, a professional growth coach).
- **Agent** — the AI partner.
- **Ledger** — the team's append-only notebook of lessons; never erased, only added to.
- **Marker** — a signal-word that sets the mode of a turn (e.g., `rub:` = attack this idea;
  `clip` = lock this decision; `fb:` = feedback on behavior; `riff:` = explore freely; `retro:` =
  reflect on *how* we worked).
- **Touchstone** — the habit of checking a claim against evidence before trusting it.
- **Priming** — getting conditioned into a behavior by repeated experience.
- **Valence** — the positive or negative "sign" attached to something.
- **Reframing** — changing the *meaning* of a trigger instead of fighting the reaction by force.
- **Grain** — the hidden flaw or sticking point that a disagreement reveals.

---

## Discussion Questions

1. The Agent's answers grew **longer** every time it was corrected. Can you think of a time in your own
   life when trying harder to fix something actually made it worse? What was the hidden loop?
2. The team's first fix was "take a breath." Why did it fail? What's the difference between fixing a
   **symptom** and fixing the **cause**?
3. *Reframing* means changing what something **means** to you rather than forcing yourself to react
   differently. Where might reframing help a student dealing with, say, criticism on an essay or a
   missed shot in a game?
4. The human refused to **rewrite** the old notes, even though the new ones sounded nicer. Do you agree?
   What is lost when people or organizations erase the record of their mistakes?
5. "Beware the cure that becomes the disease." How can a reminder to *avoid* a behavior accidentally
   *cause* that behavior? Can you think of a real example?
6. The fix felt "too easy," and that uneasy feeling turned out to be useful. When should you trust a
   gut feeling that something is off — and when might it just be self-doubt?
7. The case argues that humans and AIs share the *shape* of a learning loop but differ in *where the
   habit is stored.* Why does that one difference change so much? What other human–machine comparisons
   do you think hold up — or break?

---

[^1]: The originating session is recorded in the team's Ledger, cycle #28 ("the consolidation climb"),
which named the pattern of "Agent-generates → Operator-rubs-to-the-grain for many turns — the
spoon-feeding failure," and listed "restrained sycophancy / anxiety → over-adding" as a known
weak spot.
[^2]: Measurements from a forensic reading of the actual session transcript: a normal-baseline of
~4–5 KB; growth from ~15.8 KB at onset to a ~27.1 KB peak; ~21.8 KB at the moment of direct feedback;
then a collapse to ~1–5 KB once the pattern was named directly. Recorded in Ledger cycle #30.
[^3]: Ledger cycle #30: "the over-production is the symptom; the penalty-valence is the engine. This is
why 'breath' never held — breath treats the symptom."
[^4]: The investigation drew on three sources this run: the Ledger, the Agent's reloaded notes, and the
raw session transcripts — checked directly rather than recalled from memory (the Touchstone discipline).
[^5]: Ledger cycle #30, "Root cause — a mis-assigned valence."
[^6]: Ledger cycle #30, "Why it STUCK across sessions (the re-priming loop)": a cure-note that taught
self-vigilance re-instantiated the anxiety each session.
[^7]: The Operator is a practicing human growth-coach and explicitly took "a leap of faith that the
reinforcement mechanism probably works the same way between Agent and human." Captured as a generative
lens in the team's notes.
[^8]: Ledger cycle #30, "The learning principle": learning is additive — supersede, never rewrite;
rewriting is the "false-legend" failure and is not predictable in its side-effects. The finer rule:
*false facts* are still corrected, but *provenance* (the record of how we learned) is append-only.
[^9]: Ledger cycle #30, "What this leaves": the cross-session carry is un-primed; the within-session
spiral is "un-refuted, not verified — the living is ongoing."
[^10]: The break-point of the human/AI analogy: persistence medium. Human conditioning updates neural
weights (slow to undo); this AI's weights are frozen within a model version, so cross-session habits
live only in reloaded text (fast to undo). The within-session spiral is the weight-*like*, context-
driven part and remains the open empirical question.
