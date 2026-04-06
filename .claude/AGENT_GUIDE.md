# Agent Guide

5 specialized agents provide multi-perspective feedback on PM artifacts. All agents are auto-discovered from `.claude/agents/*.md` and have persistent project memory.

---

## Agent Inventory

| Agent | Focus | Tools |
|-------|-------|-------|
| **product-strategist** | Strategy, positioning, prioritization | Read, Grep, Glob, Write, Edit |
| **engineering-lead** | Technical feasibility, data model, cross-platform Integration Reviews | Read, Grep, Glob, Write, Edit |
| **ux-designer** | UX, usability, accessibility, design system compliance | Read, Grep, Glob, Write, Edit |
| **qa-engineer** | Test coverage, acceptance criteria, edge cases | Read, Grep, Glob, Write, Edit |
| **critical-thinker** | Assumptions, risks, blind spots, pre-mortems | Read, Grep, Glob, Write, Edit |

---

## Dispatch Map

### How Agents and Skills Relate

**Agents** can both create and review. They read context files and generate content in their response (the main session writes it to a file). Some agents are primarily reviewers, others are creators, and many do both.

**Skills** (e.g., `/prd`, `/spec`) are prompt templates that guide Claude through structured creation workflows. They don't use agents — they run in the main session.

Both are valid paths for artifact creation. Use skills for structured, template-driven output. Use agents when you want a specific persona's perspective baked into the creation.

### Creation

| User Intent | Primary Agent or Skill | Supporting Agents |
|-------------|------------------------|-------------------|
| Write a PRD | `/prd` skill | engineering-lead, ux-designer |
| Write user stories | `/user-story` skill or ux-designer | qa-engineer |
| Write a spec | `/spec` skill or engineering-lead | qa-engineer |
| Create demo script | `/demo-script` skill | product-strategist |
| Write release notes | `/release-notes` skill | product-strategist |
| Conduct research | `/research` skill | product-strategist |
| Create strategy memo | `/strategy` skill or product-strategist | critical-thinker |

### Review

| User Intent | Primary Agent | Supporting Agents |
|-------------|---------------|-------------------|
| Review PRD strategic fit | product-strategist | — |
| Review PRD technical feasibility | engineering-lead | — |
| Review PRD user experience | ux-designer | — |
| Review PRD for risks and blind spots | critical-thinker | qa-engineer |
| Full multi-agent PRD review | Agent Teams via `/multi-agent-review` (parallel) | — |
| Review acceptance criteria | qa-engineer | engineering-lead |
| Identify edge cases | critical-thinker | qa-engineer |
| Evaluate strategic bet | product-strategist | critical-thinker |
| Technical feasibility assessment | engineering-lead | qa-engineer |
| Roadmap prioritization | product-strategist | engineering-lead |

---

## Recommended Review Sequences

### Full PRD Review (4 agents)
1. **product-strategist** — Strategic fit and positioning
2. **engineering-lead** — Technical feasibility
3. **ux-designer** — User experience
4. **critical-thinker** — Final risk and blind spot check

### Quick Technical Review (2 agents)
1. **engineering-lead** — Feasibility and data model
2. **qa-engineer** — Test coverage and edge cases

---

## Agent Design Principles

- **All agents can read, write, and fetch** - agents have Read, Grep, Glob, Write, Edit, and WebFetch tools to analyze, contribute to artifacts, and reference external sources
- **All agents should cite sources** for external claims
- **Each agent has 5-6 signature questions** - these are the questions the agent always asks during review

## Enhanced Agent Features

### Persistent Memory (`memory: project`)
All 5 agents have `memory: project` in their frontmatter. This means each agent builds and retains project-specific knowledge across sessions.

### Agent Teams for Reviews
`/multi-agent-review` uses Agent Teams (TeamCreate, TaskCreate, SendMessage) for true parallel review execution. All selected reviewers run simultaneously and their findings are synthesized after completion.

### Context-Forked Skills
Heavy skills run in forked sub-agent contexts (`context: fork`) to preserve the main session's context window:
- `/research`, `/competitive-analysis`
- `/strategy` (product-strategist), `/technical-review` (engineering-lead)

---

## Lifecycle Hooks

Three hooks enforce quality and provide coordination:

| Hook Event | Script | Behavior |
|------------|--------|----------|
| **ConfigChange** | `audit-config-change.sh` | Logs all config changes to `tracker/config-changes.log` (async) |
| **TaskCompleted** | `validate-task-output.sh` | Blocks research/analysis outputs missing source citations (sync) |
| **TeammateIdle** | `teammate-idle-notify.sh` | Logs teammate idle events to `tracker/team-activity.log` (async) |

---

## If Context Is Missing

When an agent lacks necessary context files:
1. Note which context file is missing in the review output
2. Proceed with available information, flagging assumptions
3. Recommend the PM populate the missing context before finalizing decisions
