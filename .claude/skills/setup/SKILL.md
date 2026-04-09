---
name: setup
description: Personalize your Agentforce PM OS workspace. Sets your name, role, and team, then shows what's available. Run on first use or anytime with /setup --reset.
---

# Agentforce PM OS Setup

Personalize this workspace for a new Agentforce PM.

## Trigger

- **First run:** Auto-suggested when `setup_completed` is `false` in `pmos.config.yml`
- **Manual:** Run `/setup` anytime
- **Reset:** Run `/setup --reset` to reconfigure

## Process

### Step 1: Check State
1. Read `pmos.config.yml`
2. If `setup_completed: true` → "Already configured for [pm.name]. Run `/setup --reset` to reconfigure."
3. If `setup_completed: false` → proceed

### Step 2: Collect Profile (ask ONE question at a time)

1. "What's your name and role?" (e.g., "Sarah Kim, Product Manager")
2. "Who are your key team members? For each, give name, role, and Slack handle." (e.g., "Alex Chen, Engineering Lead, @alex.chen")
3. "What are your focus areas within Agentforce? The defaults are Builder, Evaluation & Testing, Session Tracing, Multi-Agent Harness, Supervision & Observability, Auto Improvement. Want to keep these or customize?"
4. "What's the current release you're working on?" (default: current value in config)
5. "What are your key team Slack channels?" (e.g., "#agentforce-pm-team, #agentforce-eng")

### Step 3: Update Config
Write collected values to `pmos.config.yml`:
- `pm.name`, `pm.role` from answer 1
- `team.members` from answer 2 (structured: name, role, slack_id, email, area)
- `product.focus_areas` from answer 3 (keep defaults if PM said "keep")
- `releases.current` from answer 4
- `team.channels` from answer 5
- Set `setup_completed: true`

### Step 4: Show What's Available

Present this cheatsheet:

```
Welcome to Agentforce PM OS!

CREATE ARTIFACTS
  /prd [feature]              — Product Requirements Document
  /spec [feature]             — Feature specification
  /user-story [feature]       — User stories with acceptance criteria
  /feature-plan [feature]     — What/Why planning doc
  /roadmap [area]             — Product roadmap
  /strategy [topic]           — Strategy memo
  /demo-script [feature]      — Demo script with narrative flow
  /launch [feature]           — Launch announcement
  /release-notes [release]    — Customer-facing release notes
  /status-update [topic]      — Stakeholder communication
  /bug-report [issue]         — Actionable bug report

ANALYZE & REVIEW
  /edge-cases [feature]       — Find edge cases before dev
  /qa-scenarios [feature]     — QA test scenarios
  /technical-review [doc]     — Technical design review
  /competitive-analysis [vs]  — Competitive positioning
  /research [topic]           — User/market research
  /multi-agent-review [doc]   — Parallel review by 5 agents

TRACK & FLOW
  /tracker [action]           — Track ideas, bugs, tasks, decisions
  /workflow feature [topic]   — Guided: Research → PRD → Review → QA → Stories
  /workflow release [number]  — Guided: Status → Notes → Repo Update → Launch → Demo

TEAM COLLABORATION
  /customer-call [details]    — Structured customer call summary
  /share-update               — Create PR + notify team via Slack

REVIEW AGENTS (used automatically or invoke directly)
  engineering-lead     — Technical feasibility
  product-strategist   — Strategic fit & positioning
  ux-designer          — Usability & accessibility
  qa-engineer          — Test coverage & edge cases
  critical-thinker     — Risks & blind spots
```

### Step 5: Suggest First Action

Based on context, suggest ONE of:
- "Want to start with `/workflow feature [topic]` to build out a feature end-to-end?"
- "Want to run `/prd [feature]` to draft a PRD?"
- "Want to explore what's in `context/` to see the Agentforce domain knowledge?"
- "New to this repo? Check `team/onboarding.md` for a walkthrough of how the team uses PM OS."

## Reset Flow

When `/setup --reset`:
1. Set `setup_completed: false` in `pmos.config.yml`
2. Clear `team.members` to `[]`
3. Ask: "Start fresh setup now?" → if yes, begin from Step 2

## Important
- Ask questions ONE AT A TIME
- Do NOT regenerate context files (they're Agentforce-standard, shared across the team)
- Keep it fast — setup should take under 2 minutes
