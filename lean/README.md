# Lean and Mathlib starter

Install [Lean via Elan](https://lean-lang.org/install/). If you use VS Code, install its Lean 4 extension and open this `lean/` directory as your project folder. The pinned [Lean release](lean-toolchain) supplies Lake, and [the manifest](lake-manifest.json) locks Mathlib and its dependencies. Git, Bash, and network access are needed for the initial setup.

From the repository root:

```bash
bash lean/check.sh
bash lean/tests/check.sh
```

Lake fetches the locked dependencies and compiles the starter's small dependency tree from source. For larger projects, where Mathlib's public cache is available, you can use `cd lean && lake exe cache get Mathlib.Data.Nat.Basic` with the relevant Mathlib module names to fetch precompiled artifacts. Prefer specific imports to importing all of Mathlib. The CI job verifies pull requests and pushes to `main`, cancelling obsolete runs for the same PR or branch.

Put mathematical source in `Formalisation/`. Use names such as `Formalisation/MyTopic.lean` for module `Formalisation.MyTopic`, with ASCII letters, digits and underscores in each segment and no leading digit. Add an import to `Formalisation.lean` when the umbrella module should expose it. The checker discovers Lean sources throughout the project, skips the root `.lake/` dependency and build directory, and fails on files outside the supported module layout. It explicitly builds and audits newly added modules even when the umbrella module omits them. The checker regression tests create and remove an isolated Lake project with no Mathlib dependency.

## Trusted base and limitations

The policy trusts the pinned Lean kernel, bundled library, locked dependencies, and verification code and build environment. The [allowlist](verification/allowed-axioms.txt) contains one exact Lean axiom name per line. Its defaults are the standard foundational axioms `propext`, `Classical.choice`, and `Quot.sound`. User-defined axioms require explicit human approval before they can be added. Any change to the allowlist or trusted-base policy requires explicit human approval recorded on the Issue or PR. `sorryAx` is always forbidden, including if entered in the allowlist.

The build treats warnings as errors. The audit checks Lean's reported axiom dependencies of every declaration in each project module, including dependencies from imported definitions and proofs. It can detect a `sorryAx` dependency even when a warning is suppressed. Unused assumptions in dependencies are outside the audit. Human review checks the formal statement and hypotheses against the informal intent and inspects changes to the verification code and dependencies.

If you use another prover, replace this directory and the Lean workflow, and update the starter references in the repository documentation.
