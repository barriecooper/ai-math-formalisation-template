# Human–AI mathematical formalisation template

Use this template to commission bounded formalisation tasks, verify results, and record what you learned. The researcher owns the mathematical intent, assumptions, and acceptance decision. Read [METHODOLOGY.md](METHODOLOGY.md) for the full workflow.

## Quick start

1. Create a repository from this template. In the new repository, enable Issues and confirm the issue chooser and PR template are available. Set up [labels and repository settings](docs/github-setup.md).
2. Write down the informal result, its definitions and hypotheses, and what would count as a faithful formal statement. Record significant design decisions in [ARCHITECTURE.md](ARCHITECTURE.md) and link milestones to Issues in [ROADMAP.md](ROADMAP.md).
3. Open a **Formalisation task** from the issue chooser. Use **Mathematical investigation** for uncertain questions and **Project review** for milestone reviews. Include links to relevant sources and prior attempts, the allowed scope, and a stopping rule.
4. Give the issue link to the implementer. Start with existing library results and inexpensive native automation. For a useful change, open a PR with the exact verification commands, results, and limitations.
5. Have a separate reviewer assess the statement against the informal intent and inspect the verification evidence. Resolve findings and obtain human acceptance before merging. See the [review guide](docs/review.md).
6. Post the [completion report](docs/completion-report.md) on the originating Issue, including when work stops without a PR. See the [fictional worked examples](docs/examples.md).

For GitHub steps, see the [newcomer walkthrough](docs/walkthrough.md). For a first exercise, verify the [Lean example](lean/README.md), then discuss the misleading variant in the review guide. The Issue and PR workflow also works with other provers.

## Planning and review assistant prompt

Copy this prompt into a planning or review session and fill in the placeholders.

```text
Read METHODOLOGY.md, AGENTS.md and the relevant architecture and Issue history.
My objective and informal mathematics: [result, definitions, hypotheses, source].
Prior work and decisions: [links]. Scope and resource limit: [constraints].
For planning, draft a bounded Issue with semantic acceptance criteria, relevant
library dependencies, a cheap first strategy and a stopping rule. Ask me to
resolve any mathematical scope or trusted-base decisions.
For review, independently compare [PR and commit] with [Issue and informal
source]. Check hypotheses, vacuity, proof integrity, transitive assumptions and
the reproducibility of the reported checks. Report findings with locations,
evidence and uncertainty. Leave the acceptance decision to me.
```
