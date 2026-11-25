# Resource-conscious human–AI mathematical formalisation

Status: initial proposal for review, 25 November 2026.

## Purpose
Enable research mathematicians, including newcomers to Lean and agentic coding, to formalise their research with modest computational resources while retaining mathematical ownership, reproducibility and critical oversight. Lean and Codex are initial tools, not requirements of the methodology.

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
2. Commission a bounded GitHub Issue with mathematical intent, acceptance criteria, relevant source locations and prior investigations, permitted scope, integrity rules and stopping conditions.
3. Implementation agent inspects existing libraries and relevant reports, attempts inexpensive methods first, and records meaningful progress. Escalate unresolved architectural decisions rather than silently changing them.
4. Submit a PR only for useful, reviewable changes. Run pinned-toolchain verification and report exact commands, results and limitations. Partial certified progress is welcome if clearly separated from unresolved goals.
5. Reviewer checks mathematical semantics, assumptions, proof integrity, maintainability, scope and evidence. Request revisions in PR comments; merge only after required checks and human acceptance.
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
- Issues: research notebook, objectives, prompts, investigations, outcomes, dependencies and decisions.
- PRs: proposed changes, implementation evidence and critical review.
- README: purpose, orientation and reproducible build instructions.
- AGENTS.md: concise operational rules for agents, including reporting and escalation.
- ARCHITECTURE.md: current mathematical abstractions and significant design rationale.
- ROADMAP.md: high-level milestones linked to Issues, not a duplicate task ledger.
- Methodological guidance: reusable reference, not a project progress log.

Documentation describes current knowledge, not chronological activity. Avoid parallel proof ledgers, exhaustive theorem inventories and duplicated status tables. Update documents only when their subject changes; consolidate separately at milestones. GitHub records are not complete agent transcripts: retain relevant prompts, review comments and meaningful failed approaches explicitly. Export Issue/PR history separately when archiving research; a Git clone or template copy alone does not preserve it.

## Resource strategy
Escalate from native automation and library search to a focused agent attempt, targeted decomposition, mathematical review and only then parallel competing strategies if justified. Agree a modest task budget or stopping rule (for example, three substantively different failed strategies without new insight); stop earlier if a mathematical decision is needed. Preserve reusable certified partial results. Track actual usage only when available. Do not assume free verification implies free AI reasoning.

## Teaching and evaluation
Teach formal literacy (reading statements, types, hypotheses, proof states and verification limits), the Issue–PR workflow, critical review and failure handling, then initiate a small real research project. Independent proof-writing expertise is not an initial prerequisite, but semantic understanding is essential. Start with a familiar theorem and an intentionally misleading formalisation to demonstrate why green CI is insufficient.
Potential evaluation: verified progress, human interventions, resource use, failed approaches, semantic errors detected, reproducibility and reuse. Obtain appropriate consent and governance before collecting research data about participants.

## Evolution
Keep enduring research principles separate from replaceable tools and adapters. Version this framework, pilot it with colleagues, review changes through Issues and PRs, and consider a citable release after evaluation. Avoid premature orchestration automation. New agents should be able to reconstruct project context from the repository and relevant Issues without access to prior chats.
