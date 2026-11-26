# Reviewer guide

Review separately from implementation. Start with the Issue and informal source, then read the proposed formal statement before reading its proof.

- Match each definition, quantifier, hypothesis, and conclusion to the mathematical intent. Check for impossible hypotheses, empty domains, and other sources of vacuity.
- Check scope and assumptions, including transitive axioms. Look for unfinished proofs, weakened claims, and unapproved changes to the verification policy.
- Check the pinned commands and evidence for the reviewed commit. Reproduce the checks when practical and flag any gaps.
- Check maintainability and provenance. In the PR, give findings with locations, evidence, and uncertainty. Request revisions in the PR discussion and recheck the implementer’s replies and evidence. The researcher makes the acceptance decision.

For a semantic review exercise, consider `∀ n : Nat, n < 0 → 0 + n = n`. Lean can verify this statement, but the added hypothesis is impossible for natural numbers. Ask what the proof establishes about the intended unconditional identity.
