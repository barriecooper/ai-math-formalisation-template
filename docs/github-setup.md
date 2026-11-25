# GitHub setup

In each new repository, check that Issues are enabled, the three Issue templates appear in the chooser, and a new PR gets the default PR template. Enable Actions if using the Lean example and confirm that the Lean verification job appears on a PR. Set required checks and approval rules in the new repository if desired. Template copies carry repository files. Plan to recreate labels, Issues, PRs, branch protection, and other settings as needed. Export Issue and PR history separately when archiving a research project.

Create the following labels in **Issues → Labels** if you use labels to filter outcomes. Apply one outcome and, for a blocked investigation, the applicable blocker. The Issue comment records the evidence.

| Label | Meaning |
| --- | --- |
| `outcome: complete` | Acceptance criteria met |
| `outcome: partial` | Useful progress with criteria outstanding |
| `outcome: blocked` | Work awaits a decision, resource, or dependency |
| `outcome: disproved` | Evidence establishes that the commissioned claim is false |
| `outcome: superseded` | A linked objective replaces the investigation |
| `outcome: interrupted` | Work ended before a normal completion report |
| `blocker: mathematics` | Mathematical obstruction or unresolved intent |
| `blocker: resources` | Budget, time, or compute limit |
| `blocker: technical` | Tool, environment, or access dependency |
