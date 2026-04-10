# Agentforce PM Team OS

A Claude Code-powered operating system for Agentforce product teams. Skills do the work, agents review it, context makes it smart.

## Philosophy

This is **not** a document management system. It's a workflow engine:

1. **You say what you need** — `/prd session-trace-comparison` or `/workflow feature [topic]`
2. **Skills do the heavy lifting** — they read context, apply templates, and generate polished artifacts
3. **Agents review your work** — 5 specialized agents catch blind spots from engineering, strategy, UX, QA, and critical thinking perspectives
4. **Artifacts land where they belong** — organized in `product-development/` automatically

## Quick Setup

1. Clone this repo
2. Open in Claude Code: `claude` from the project root
3. Run `/setup` — walks you through name, role, team (~2 min)
4. Start working: `/workflow feature [topic]` or any skill below

## Workflows

The fastest way to get work done end-to-end:

- **`/workflow feature [topic]`** — Research -> PRD -> Agent Review -> QA Scenarios -> User Stories
- **`/workflow release [number]`** — Status -> Release Notes -> Launch -> Demo Script

## Skills (20)

### Create
| Skill | What it does |
|-------|-------------|
| `/prd` | Product Requirements Document |
| `/spec` | Feature specification for engineering handoff |
| `/user-story` | User stories with acceptance criteria |
| `/feature-plan` | What/Why planning (no implementation details) |
| `/roadmap` | Product roadmap visualization |
| `/strategy` | Strategy memos for team alignment |
| `/demo-script` | Story-driven demo scripts |
| `/launch` | Launch announcements and communications |
| `/release-notes` | Customer-facing release notes |
| `/status-update` | Stakeholder communications |
| `/bug-report` | Actionable bug reports |

### Analyze
| Skill | What it does |
|-------|-------------|
| `/edge-cases` | Edge cases and error states before dev |
| `/qa-scenarios` | QA test scenarios (happy path, edge, integration) |
| `/technical-review` | Technical design reviews |
| `/competitive-analysis` | Competitive positioning analysis |
| `/research` | User research and market research |

### Review & Track
| Skill | What it does |
|-------|-------------|
| `/multi-agent-review` | Parallel review by 5 agents |
| `/tracker` | Track ideas, bugs, tasks, decisions |
| `/workflow` | Guided multi-stage workflows |
| `/setup` | Personalize workspace (first run) |

## Review Agents (5)

| Agent | Focus |
|-------|-------|
| **Engineering Lead** | Technical feasibility, data model, cross-platform |
| **Product Strategist** | Strategic fit, positioning, prioritization |
| **UX Designer** | Usability, accessibility, design system |
| **QA Engineer** | Test coverage, acceptance criteria, edge cases |
| **Critical Thinker** | Assumptions, risks, blind spots, pre-mortems |

Use `/multi-agent-review [doc]` for parallel reviews, or invoke agents individually.

## Directory Structure

```
agentforce-pm-os/
├── .claude/                   # Engine: agents, skills, rules, hooks
├── context/                   # Brain: Agentforce domain knowledge
├── product-development/       # Output: PRDs, specs, stories, plans, analytics
├── product-strategy-frameworks/  # Reference: Rumelt, DHM, SWOT, Socratic
├── templates/                 # Formats: PRD, spec, user-story, demo, update
├── workflows/                 # Pipelines: feature development, release prep
├── tracker/                   # Log: ideas, bugs, tasks, decisions
├── team/                      # People: onboarding, norms, retros
├── memory/                    # Learning: decisions, preferences, domain insights
├── pmos.config.yml            # Config: your profile & product context
└── CLAUDE.md                  # Instructions: system behavior
```

## Customizing

- **Your profile**: Run `/setup` or edit `pmos.config.yml`
- **Domain context**: Update files in `context/` as Agentforce evolves
- **Templates**: Modify `templates/` to match your team's formats
- **Add skills**: Create new skills in `.claude/skills/[name]/SKILL.md`

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
