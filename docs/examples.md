# Fictional investigation examples

Both examples are illustrative. The reported activity, results, and references are fictional.

## Successful formalisation

An Issue asks for a proof of `0 + n = n` for every natural number, with no extra hypotheses or unapproved axiom dependencies. It allows editing only the example module and sets a stopping rule of three distinct unsuccessful strategies without new insight.

- **Outcome and provenance** — Complete. Fictional base `abc1234`, Lean 4.36.0, session reference unavailable, example PR `#12`.
- **Progress and evidence** — Library inspection found `Nat.zero_add`. The committed theorem applies it directly. `bash lean/check.sh` passed, including the axiom allowlist audit. A separate reviewer confirmed that the statement covers every natural number.
- **Stopping and changes** — Stopped after meeting the criteria. No failed strategies or outstanding goals. Elapsed time and resource usage unknown. The PR changes the example module.

## Blocked investigation

An Issue asks whether a particular informal operation is monotone for the order used in a research note. The note uses two different orders without specifying which one the claim concerns. The Issue permits exploration and calls for an early stop if a mathematical decision is needed.

- **Outcome and provenance** — Blocked on mathematical intent. Fictional base `abc1234`, Lean 4.36.0, session reference unavailable. No PR and no repository changes.
- **Approaches and evidence** — Reading the cited note found pointwise order in Definition 2 and strict order on a statistic in Definition 4. A focused library search found monotonicity lemmas for each order, with different hypotheses. No formal claim was verified.
- **Stopping and next step** — Both interpretations remain possible. Ask the researcher to specify the order before commissioning a proof. The ambiguity does not establish a disproof. Elapsed time and resource usage unknown.
