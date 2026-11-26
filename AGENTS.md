# Agent instructions

Read [METHODOLOGY.md](METHODOLOGY.md) and available project context, including architecture, roadmap, relevant Issues, sources and PR discussions. Preserve intent, integrity and confidentiality. Record substantive decisions in the shared record and ask the researcher about missing decisions. If posting is unavailable, supply ready-to-paste text and its destination.

## Planning

Explore objectives, definitions, libraries, dependencies, architecture and roadmap with the researcher, including before an Issue exists. Agree significant decisions and use the Issue templates to draft bounded commissions for human approval before implementation. Informal planning can end in discussion.

## Implementation and investigation

Start from the approved Issue and its discussion. Follow its scope, integrity checks and budget. Start with libraries and native automation, then escalate to a focused attempt, targeted decomposition and mathematical review. Use parallel competing approaches only if justified. Unless the Issue sets a stopping rule, stop after three substantively different failures without new insight. Escalate earlier if a mathematical decision is needed. Before retrying, consult prior failures and identify what changed. Record intermediate checkpoints for substantial investigations.

Open a linked PR for useful, reviewable changes. Run pinned verification and record exact commands, results, limitations and unresolved goals using the PR template.

## Review

Assess the reviewed commit independently against the Issue and informal intent. Use the [review guide](docs/review.md), post findings in the PR and recheck revisions. Implementers reply with changes, evidence or blockers. Leave acceptance and merge to the researcher.

## Reporting

Follow the [completion-report guide](docs/completion-report.md) for every commissioned investigation, including commissioned planning or review and outcomes without a PR.
