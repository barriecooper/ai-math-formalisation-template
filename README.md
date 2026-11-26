# Human–AI mathematical formalisation template

Use this template to set up a research project, commission bounded formalisation work, and carry results and decisions across sessions. The researcher owns the mathematical intent, assumptions, and acceptance decision. Read the [methodology](METHODOLOGY.md) and follow the [newcomer walkthrough](docs/walkthrough.md) for GitHub steps and copyable prompts.

## Quick start

1. Create a repository and follow [GitHub setup](docs/github-setup.md). Replace the starter content in [ARCHITECTURE.md](ARCHITECTURE.md) and [ROADMAP.md](ROADMAP.md) with your mathematical setting and milestones. If using Lean, verify the [starter example](lean/README.md).
2. **Researcher and planning assistant.** Define the informal objective, assumptions, and stopping rule. Ask the planning assistant to draft a bounded Issue, approve the commission, and have the assistant post it if you authorise posting.
3. **Implementation agent.** Give the agent the approved Issue URL. The agent reads its discussion and linked evidence, attempts the task, and opens a PR when there is useful work to review.
4. **Independent reviewer and implementer.** Give a separate reviewer the PR and Issue URLs. The reviewer posts findings in the PR. The implementer works from those comments and replies with changes and evidence. The researcher decides whether to accept the result.
5. **Record the outcome.** Post the [completion report](docs/completion-report.md) on the originating Issue even if there is no PR. See the [worked examples](docs/examples.md).

Start later sessions with the Issue and any active PR. Keep substantive clarifications on the Issue and revision requests in the PR discussion. When an assistant lacks GitHub access, provide the relevant permitted excerpts and ask for ready-to-paste text with its destination.
