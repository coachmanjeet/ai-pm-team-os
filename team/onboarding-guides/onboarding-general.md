# Onboarding Guide — Agentforce PM OS

Welcome to the team's shared context repository. This is where we store, collaborate on, and leverage our team's collective knowledge using Claude Code.

## What Is This Repo?

This is a **Team Operating System** — a shared knowledge base that helps everyone on the team move faster and make better product decisions. It's not a code project; it's a document-centric workspace powered by Claude Code.

Everyone contributes: PMs, engineers, designers, data scientists, strategy partners, and operations.

## Getting Started

### 1. Install & Configure
1. Open this repo in Claude Code
2. Run `/setup` to personalize your workspace (name, role, Slack handle, focus areas)
3. This takes ~2 minutes

### 2. Learn the Structure

| Folder | What's There | Who Owns It |
|--------|-------------|-------------|
| `product-development/` | All cross-functional work (see below) | Team |
| `product-development/product/` | PRDs, specs, customers, strategy, launches | PM |
| `product-development/engineering/` | Plans, RFCs, bug investigations | Engineering Lead |
| `product-development/analytics/` | Metrics, queries, schemas, dashboards | Data Scientist |
| `product-development/design/` | Design docs (artifacts in Figma) | UX Designer |
| `context/` | Agentforce domain knowledge | PM Lead |
| `plans/` | Reusable plan files for complex work | Everyone |
| `templates/` | PM artifact templates | PM Lead |
| `tracker/` | Ideas, bugs, tasks, decisions | Everyone |
| `workflows/` | Guided multi-stage workflows | PM Lead |
| `memory/` | Session learnings across conversations | Auto-managed |
| `team/` | Onboarding, norms, retros | Everyone |

**Each folder has a `CLAUDE.md`** that tells Claude what's inside. This is how Claude navigates efficiently without burning context.

### 3. Essential Skills to Learn First

| Skill | What It Does | Try It |
|-------|-------------|--------|
| `/customer-call` | Summarize a customer call in structured format | After your next call |
| `/tracker idea [description]` | Log a product idea | Right now |
| `/prd [feature]` | Create a Product Requirements Document | When planning a feature |
| `/workflow feature [topic]` | Guided feature development flow | For end-to-end feature work |
| `/share-update` | Create PR + notify team via Slack | After creating any artifact |

### 4. How to Contribute

1. **Work in Claude Code** — Write docs, summaries, and analysis here
2. **Commit your work** — Save progress with git commits
3. **Open a PR** — Use `/share-update` or `gh pr create` to share for review
4. **Tag the right reviewer** — Claude knows your team from `pmos.config.yml`

### 5. Key Principles

- **Structured > Unstructured** — Use skills to create consistent formats
- **Update the repo** — Features aren't launched until the repo reflects them
- **Everyone contributes** — Your function's folder is your responsibility
- **Context is precious** — Keep CLAUDE.md files lean, organize information so Claude loads only what's needed

## Need Help?

- Ask Claude: "Explain how [folder/skill] works"
- Check `team/norms.md` for team agreements
- Ask your PM lead for a walkthrough
