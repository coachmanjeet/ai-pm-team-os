---
name: status-update
description: Create status updates and stakeholder communications for Agentforce features. Use when writing executive updates, weekly team updates, release readiness reports, or any stakeholder communication. Includes audience-tailored formats, ROAM risk framework, and Green/Yellow/Red status methodology.
---

# Status Update

Create a status update for: $ARGUMENTS

## Context Gathering

- Review relevant docs in `product-development/product/PRDs/`
- Check `tracker/tasks.md` for task status
- Reference the PRD if available
- Reference `context/WRITING-GUIDE.md` for voice and tone

## Process

### 1. Determine Audience

| Audience | They Want | Format |
|----------|-----------|--------|
| **Executives** | Impact, risks, decisions needed | TL;DR + status + asks |
| **Engineering team** | What's changing, what's blocked, priorities | Sprint-level detail |
| **Cross-functional** | What's coming that affects them, what they need to prepare | Upcoming + asks |
| **Customers** | What's new, what's coming, benefits | Benefit-focused, no jargon |

### 2. Choose Format

See [references/templates.md](references/templates.md) for full templates:
- **Executive Update** — For leadership, skip-levels
- **Weekly Team Update** — For scrum team, sprint-level
- **Release Readiness** — Pre-GA checklist with go/no-go
- **Cross-Functional Update** — For design, marketing, sales, support

### 3. Status Assessment

**Green** — Progressing as planned, no significant risks
**Yellow** — At risk, mitigation underway but outcome uncertain. Flag EARLY.
**Red** — Off track, needs escalation or scope change

Rule: Move to Yellow at the FIRST sign of risk, not when you're sure things are bad.

### 4. Risk Communication (ROAM Framework)

| Status | Meaning | Action |
|--------|---------|--------|
| **Resolved** | No longer a concern | Document how resolved |
| **Owned** | Someone is actively managing it | State owner + mitigation plan |
| **Accepted** | Proceeding without mitigation | Document rationale |
| **Mitigated** | Reduced to acceptable level | Document what was done |

### 5. Writing Rules

- Be transparent — don't hide problems
- Be specific — include dates, numbers, owners
- Lead with summary — busy readers scan first
- Include asks — be clear about what you need from the audience
- Frame risks with: risk statement, impact, likelihood, mitigation, ask

## Output

Save to `projects/[project-name]/status/[date]-status.md`
