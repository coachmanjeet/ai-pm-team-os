# Agentforce PM OS

A lean, Claude Code-powered PM workspace for Agentforce product managers. 20 skills, 5 review agents, and Agentforce domain context — ready to use.

## Quick Setup

1. Clone this repo
2. Open in Claude Code: `claude` from the project root
3. Run `/setup` — walks you through name, role, team, and shows all available skills (~2 min)
4. Start working: `/prd`, `/workflow feature`, or ask a question

> Claude auto-detects first run and suggests `/setup`. You can also edit `pmos.config.yml` directly.

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
| `/multi-agent-review` | Parallel review by multiple agents |
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

## Workflows (2)

- `/workflow feature [topic]` — Research -> PRD -> Review -> QA -> User Stories
- `/workflow release [number]` — Status -> Release Notes -> Launch -> Demo Script

## Directory Structure

```
agentforce-pm-os/
├── CLAUDE.md              # System instructions
├── pmos.config.yml        # Your profile & product config
├── .claude/               # Agents, skills, rules, hooks
├── context/               # Agentforce domain knowledge
│   ├── TERMINOLOGY.md     # Agent concepts & platform terms
│   ├── ARCHITECTURE.md    # System architecture
│   ├── PRODUCT.md         # Product overview & vision
│   ├── PERSONAS.md        # User personas & job stories
│   ├── CAPABILITIES.md    # Feature inventory by area
│   └── COMPETITIVE.md     # Competitive landscape
├── templates/             # PRD, spec, user-story, demo, weekly-update
├── docs/                  # Feature documentation by release
├── memory/                # Session learnings (decisions, preferences, domain knowledge)
├── tracker/               # Ideas, bugs, tasks, decisions
└── workflows/             # Guided multi-stage processes
```

## Customizing

- **Your profile**: Edit `pmos.config.yml`
- **Domain context**: Update files in `context/` as Agentforce evolves
- **Templates**: Modify `templates/` to match your team's formats
- **Add skills**: Create new skills in `.claude/skills/[name]/SKILL.md`

## Requirements

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI
