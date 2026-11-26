# Resource-conscious human–AI mathematical formalisation

## Purpose

Help researchers formalise mathematics with modest resources while retaining mathematical ownership, reproducibility and critical oversight. Choose a proof assistant and AI tools that fit the project.

## Research principles

- Researchers own mathematical intent, definitions, assumptions, architecture and acceptance. Obtain explicit human approval for changes to mathematical scope or the trusted base.
- A checked proof may prove the wrong statement. Check definitions, hypotheses, vacuity, dependencies and correspondence with the informal mathematics. Preserve the intended statement, disclose unfinished proofs and reject unjustified axioms. Verification must use the pinned toolchain and an explicit integrity policy covering unfinished proofs and theorem axioms, including transitive dependencies. Never bypass checks or report unverified work as certified.
- Start with libraries and native automation. Bound attempts and escalate when they stop yielding insight. Prompt budgets are advisory and cannot enforce compute limits. Report actual resource usage when known and mark unknowns. Verification and AI reasoning have separate costs.
- Treat informative failure as a research outcome. A failed proof search does not establish a disproof, and a suspected missing lemma does not establish a necessary condition. Preserve useful certified partial results and identify unresolved goals.
- Keep implementation and critical review separate. Independent review provides a separate critical assessment without guaranteeing correctness or statistical independence. Required checks and human acceptance govern merge.

## Persistent research communication

GitHub Issues and PR discussions are the shared record across researchers, agents and sessions. Record commissions, substantive clarifications, mathematical decisions and outcomes on Issues. Use PR review comments to commission revisions and reply there with evidence or blockers. Link affected decisions back to the Issue. Bring substantive decisions from meetings or private chats into the relevant record. Respect confidentiality, consent, intellectual property and institutional policy when sharing material.

Recover context from repository guidance, the Issue discussion, linked sources and prior reports, and any active PR reviews and replies. Ask the researcher for missing decisions and record the answers. If posting is unavailable, supply ready-to-paste text and its destination.

Report every commissioned investigation on its originating Issue, including no-PR and interrupted outcomes. Use the [completion report](docs/completion-report.md) for timing and fields.

## Information architecture

- [METHODOLOGY.md](METHODOLOGY.md) holds enduring research principles and methodological requirements.
- [AGENTS.md](AGENTS.md) gives operational instructions by role. [README.md](README.md) orients newcomers.
- The [walkthrough](docs/walkthrough.md) is the human-facing workflow. The [review guide](docs/review.md) and [GitHub setup guide](docs/github-setup.md) cover review and repository setup, including optional Projects.
- Source code holds formal definitions and checked results relative to the trusted base. [ARCHITECTURE.md](ARCHITECTURE.md) records current design and rationale. [ROADMAP.md](ROADMAP.md) tracks milestones linked to Issues.
- Issues are authoritative for investigations, decisions and outcomes. PRs hold proposed changes, verification evidence and review.

Keep durable documentation current, review it at meaningful milestones, and keep investigation history in the shared record. Avoid parallel proof ledgers, exhaustive theorem inventories and duplicated status tables. Retain relevant prompts and failed approaches in the shared record. Export Issue and PR history separately when archiving.

## Applying the methodology

Use the walkthrough to establish the project, commission work and review contributions. Adapt the verification guide to your prover while preserving the integrity requirements.
