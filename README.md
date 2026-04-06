# Agentforce PM OS

A lean, Claude Code-powered PM workspace for Agentforce product managers. 19 skills, 5 review agents, and Agentforce domain context — ready to use.

## Quick Setup

1. Clone this repo
2. Open in Claude Code: `claude` from the project root
3. Edit `pmos.config.yml` with your name, role, and team
4. Start working: "What would you like to focus on today?"

## Skills (19)

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
