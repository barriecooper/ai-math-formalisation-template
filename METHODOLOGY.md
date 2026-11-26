# Resource-conscious human–AI mathematical formalisation

## Purpose
Enable research mathematicians, including newcomers to Lean and agentic coding, to formalise their research with modest computational resources while retaining mathematical ownership, reproducibility and critical oversight. Choose a proof assistant and AI tools that fit the project.

## Principles
- Humans own mathematical intent, definitions, assumptions, architecture and acceptance decisions. AI assists planning, implementation and review; it is not an authority.
- Formal verification is necessary but not sufficient: a checked proof may establish the wrong statement. Review definitions, hypotheses, vacuity, dependencies and correspondence with informal mathematics.
- Never silently weaken a statement, add unjustified axioms, hide unfinished proofs, bypass verification or report an unverified result as certified. Any change of mathematical scope requires explicit approval. For Lean, audit sorry/admit and theorem axioms against an explicit policy; for other provers use equivalent checks.
- Prefer existing libraries and native symbolic automation to expensive generative search. Use small bounded tasks, escalate strategically and stop when approaches cease to yield new information. Prompt-based limits are advisory, not hard compute caps.
- An informative failure is a legitimate research outcome. Distinguish a failed proof search from a disproof, and a suspected missing lemma from an established necessary condition.
- Keep implementation and review distinct; independent review means a separate critical assessment, not a guarantee of statistical independence or correctness. Human approval remains essential.
- Preserve provenance and minimise duplicated documentation. Respect confidentiality, consent, intellectual property and institutional AI policies before sending unpublished mathematics to external services.

## Workflow
1. Researcher and planning assistant agree mathematical objectives, formalisation choices and dependencies.
2. The planning assistant drafts a bounded GitHub Issue for the researcher to approve before commissioning the work. Include mathematical intent, acceptance criteria, relevant source locations and prior investigations, permitted scope, integrity rules and stopping conditions.
3. The implementation agent starts from the approved Issue URL, inspects existing libraries and relevant reports, attempts inexpensive methods first, and records meaningful progress. Escalate unresolved architectural decisions rather than silently changing them.
4. Submit a PR only for useful, reviewable changes. Run pinned-toolchain verification and report exact commands, results and limitations. Partial certified progress is welcome if clearly separated from unresolved goals.
5. Reviewer checks mathematical semantics, assumptions, proof integrity, maintainability, scope and evidence. Commission revisions through PR review comments and have the implementer respond there with changes and evidence. Merge only after required checks and human acceptance.
6. Record the outcome on the originating Issue even if no PR exists. Link PRs, successor Issues and dependencies. Keep outstanding objectives open or explicitly close with rationale.
7. Periodically review the roadmap and architecture at meaningful milestones rather than rewriting documentation on every task.

## Completion report (required for every commissioned investigation)
Post a concise Issue comment containing:
- Objective and outcome: complete, partial, blocked (mathematics/resources/technical), disproved, superseded, or interrupted.
- Base commit/toolchain and session reference if available; relevant PR or recoverable branch/patch.
- Verified progress, distinguishing committed/certified work from local or unverified experiments.
- Distinct approaches attempted, observed failures and evidence (relevant proof state, error, counterexample or source location).
- Outstanding obstruction and uncertainty; recommended next step or dependency.
- Stopping reason, available resource/elapsed-time information (mark unknown rather than inventing), and repository changes, including explicitly stating when no PR exists.

If the agent cannot post to GitHub, it returns the report for the researcher to paste. If abruptly terminated, the researcher records interruption and recoverable evidence; absence of a report is not success. Use intermediate checkpoints for substantial investigations, not every small task. Do not manufacture a PR merely to log failure. Before retrying, consult relevant reports and identify what has changed.

## Information architecture
- Source code: authoritative formal definitions and checked results, relative to the stated trusted base.
- Issues: authoritative record of commissions, clarifications, decisions, dependencies and outcomes, including investigations without a PR.
- PRs: proposed changes, implementation evidence and independent review, including revision requests and responses.
- README: purpose, orientation and reproducible build instructions.
- AGENTS.md: concise operational rules for agents, including reporting and escalation.
- ARCHITECTURE.md: current mathematical abstractions and significant design rationale.
- ROADMAP.md: high-level milestones linked to Issues, not a duplicate task ledger.
- Methodological guidance: reusable reference, not a project progress log.

Documentation describes current knowledge, not chronological activity. Avoid parallel proof ledgers, exhaustive theorem inventories and duplicated status tables. Update documents only when their subject changes; consolidate separately at milestones. GitHub records are not complete agent transcripts: retain relevant prompts, review comments and meaningful failed approaches explicitly. Export Issue/PR history separately when archiving research; a Git clone or template copy alone does not preserve it.

## Resource strategy
Escalate from native automation and library search to a focused agent attempt, targeted decomposition, mathematical review and only then parallel competing strategies if justified. Agree a modest task budget or stopping rule (for example, three substantively different failed strategies without new insight); stop earlier if a mathematical decision is needed. Preserve reusable certified partial results. Track actual usage only when available. Do not assume free verification implies free AI reasoning.

## Formal literacy

Practise reading formal statements, types, hypotheses and proof states. Start with a familiar theorem and compare a faithful formalisation with one that verifies under an impossible hypothesis. Discuss what each statement establishes and what verification leaves for the reviewer to assess. Practise recording failed investigations alongside successful results.

## Continuity across agents and tools

Use GitHub Issues and PR discussions as a persistent, shared communication protocol between researchers and agents. Record substantive clarifications and decisions made in meetings or private chats on the relevant Issue or PR, within the project's confidentiality rules. Record changes to the commission and mathematical decisions on the Issue. Keep code-specific review requests and responses on the PR and link them from the Issue when they affect the investigation.

Give each new agent the Issue URL and any active PR URL. The agent reconstructs the task from repository instructions, the commission, linked sources and prior reports, and any PR reviews and replies. If a needed decision or source is missing, ask the researcher and record the answer in the shared record. If an agent cannot post, it supplies ready-to-paste text and identifies the Issue, PR or review thread where it belongs.

GitHub Projects can optionally provide a management view of Issues. Keep essential context and decisions on the Issues themselves.
