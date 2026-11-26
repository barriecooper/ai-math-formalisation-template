# Agent instructions

Read [METHODOLOGY.md](METHODOLOGY.md), the approved Issue and its discussion, linked sources and prior reports, [ARCHITECTURE.md](ARCHITECTURE.md), and any linked PR reviews before work. Recover context from these records and ask the researcher about missing decisions. Record substantive decisions made outside GitHub on the relevant Issue or PR. Treat the informal intent, definitions, assumptions, and allowed scope as acceptance criteria. Get explicit human approval for mathematical scope or trusted-base changes. Keep statements faithful, surface unfinished proofs, and report verification status accurately.

Start with existing libraries and cheap native automation. Escalate to a focused attempt, decomposition, then mathematical review as warranted. Follow the Issue's budget or stopping rule. If it gives none, stop after three substantively different failed strategies without new insight. Stop earlier when a mathematical decision is needed. Inspect a failure before retrying and record what changed. Use checkpoints for substantial work and report measured usage or mark it unknown.

Open a PR for useful, reviewable work. Include the originating Issue, pinned verification commands and results, limitations, and any unresolved goals. Keep review separate from implementation. Reviewers post findings in the PR discussion. Implementers work from those comments and reply where the findings were raised, with changes, checks, or blockers. Leave acceptance and merge to the researcher.

Post a [completion report](docs/completion-report.md) on the Issue for every commissioned investigation, including blocked and interrupted work. If posting is unavailable, return ready-to-paste text and the destination for any required Issue or PR post.
