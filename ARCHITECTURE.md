# Architecture

Record the project's current mathematical abstractions, their correspondence to the informal mathematics, and any significant design rationale. Link decisions to their Issues or PRs as the project develops.

The starter example formalises the natural-number identity `0 + n = n` for every natural number. The Lake project pins Mathlib and uses the existing `Nat.zero_add` lemma. The example and its verifier live in [lean/](lean/README.md), with a dedicated CI workflow. The methodology and GitHub templates are usable independently.
