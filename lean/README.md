# Lean example

With [Elan](https://github.com/leanprover/elan) and Bash available, run from the repository root:

```bash
bash lean/check.sh
```

Elan selects the release pinned in [lean-toolchain](lean-toolchain) when the script enters this directory. A matching standalone Lean release on `PATH` also works. The script checks the version, compiles the example in a temporary directory with warnings treated as errors, and runs the audit. [CI](../.github/workflows/lean.yml) downloads the same release and runs the same script. The example requires no Mathlib or Lake dependencies.

## Trusted base and limitations

The policy trusts the pinned Lean release, its kernel and bundled library, and the verification code and build environment. This example allows **zero axiom dependencies**. The build rejects unfinished-proof warnings. The audit uses Lean's `collectAxioms` on all declarations in the compiled example module and fails on every reported axiom, including `sorryAx` and assumptions reached through the types or values of transitive dependencies. An unused axiom in an imported module is outside this audit. If adding project modules, extend the audit coverage and record any human-approved changes to the trusted base.

The audit reports kernel dependencies. It cannot establish semantic fidelity, meaningful hypotheses, or the integrity of a modified checker or toolchain. Review the formal statement against the informal claim, and review changes to the audit and CI as part of the trusted base.

For a project using a different prover, remove this directory and the Lean workflow, and update the example references in the repository documentation.
