---
name: feature-plan
description: Create feature planning documents for Agentforce that focus on WHAT and WHY without implementation details. Use when planning features, enhancements, research initiatives, or complex bug fixes. Integrates LNO framework, opportunity cost thinking, and three levels of product work.
---

# Feature Plan

Create a feature plan for: $ARGUMENTS

## Frameworks

Before planning, apply:
- LNO framework (Leverage, Neutral, Overhead) for prioritization and opportunity cost thinking
- Three levels of product work (Impact, Execution, Optics)
Weave insights naturally into the plan.

## Context Gathering

- Check `context/PRODUCT.md`, `context/PERSONAS.md`
- Check `docs/Releases/` for related features
- Check `research/` for existing research
- Ask: Feature, problem solved, target users, release, dependencies

## Plan Structure

See [references/templates.md](references/templates.md) for the full template.

**Key sections:**
- Goals (primary, secondary, non-goals)
- Problem Description (problem, who, impact, evidence)
- Jobs to Be Done (priority table with success criteria)
- High-Level Approach (WHAT not HOW, key components)
- Acceptance Criteria (Given/When/Then)
- Success Metrics (metric, baseline, target, measurement method)
- Dependencies (type, team, status, impact if delayed)
- Risks with mitigations
- Cross-Platform Considerations (Cross-Team Dependency Reviews, affected clouds)
- Open Questions with owners

## Plan Types

| Type | When | Weight |
|------|------|--------|
| Feature Plan | New capability, multiple components | Full template |
| Enhancement Plan | Improvement to existing feature | Lighter weight |
| Research Plan | Investigation before committing | Focus on questions and approach |
| Bug Fix Plan | Complex bugs requiring planning | Focus on problem and approach |

## Key Principles

- Focus on WHAT and WHY — avoid implementation details
- Be specific about scope (in-scope and explicit out-of-scope)
- Identify dependencies early (cross-platform, Cross-Team Dependency Reviews, teams)
- Surface risks honestly with mitigations

## Save Location

Save to `projects/[project-name]/plan.md`
