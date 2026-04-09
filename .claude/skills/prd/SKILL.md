---
name: prd
description: Create Product Requirements Documents for Agentforce features. Use when writing PRDs, feature specs, product requirements, or any product specification document. Merges Agentforce domain context with PM best practices (Four Risks, MoSCoW, pre-mortems).
---

# PRD Creation

Create a Product Requirements Document for: $ARGUMENTS

## Context Gathering

Before writing, silently read and apply:
- Check `plans/` for existing plans on this feature (reuse before rebuilding)
- `context/PRODUCT.md`, `context/PERSONAS.md`, `context/TERMINOLOGY.md`
- Check `product-development/product/PRDs/` for related feature docs
- Check `product-development/feature-index.yaml` for related artifacts
- Check `product-development/product/customers/` for relevant customer feedback and call data
- Check `memory/` files for relevant past decisions

## PRD Structure

### Problem Statement
- What problem? Who experiences it? Impact of not solving?
- Use formula: **[User persona] needs [capability] because [reason], but currently [gap/pain]**
- Validate against Four Risks: Value, Usability, Feasibility, Viability

### Goals & Success Metrics
- Define leading indicators (predict future success) and lagging indicators (confirm past success)
- Each metric: current baseline, target, measurement method
- Align to GEM model (Growth, Engagement, Monetization) where applicable

### User Personas
- Reference `context/PERSONAS.md` for Agentforce personas
- Current workflow, pain points, desired outcome

### Proposed Solution
- High-level description, key features, UX overview
- How it fits within existing Agentforce architecture

### Requirements
Categorize using **MoSCoW**:
- **Must Have** — Feature fails without these
- **Should Have** — Important but workarounds exist
- **Could Have** — Nice to have, first to cut
- **Won't Have** — Explicitly out of scope (prevents scope creep)

### Technical Considerations
- Data model changes, API impacts
- Cross-platform dependencies (check if Cross-Team Dependency Review needed)
- Integration requirements (adjacent platform modules, partner systems)

### Acceptance Criteria
For each requirement, use **Given/When/Then**:
```
Given [precondition]
When [action]
Then [expected result]
```

### Risks & Pre-Mortem
- Imagine the feature shipped and failed. What went wrong?
- Address each of the Four Risks with mitigations
- See [references/frameworks.md](references/frameworks.md) for detailed risk framework

### Open Questions
- Unresolved items needing discussion
- Assumptions to validate with engineering

## Multi-Agent Review

After creating the draft, invoke agents in parallel:
- **Engineering Lead** — Technical feasibility, data model, cross-platform integration reviews
- **UX Designer** — User experience, usability concerns
- **Critical Thinker** — Assumptions, blind spots, pre-mortem risks

## Output

Save to `product-development/product/PRDs/[product-area]/[feature-name]-prd.md` and update `product-development/feature-index.yaml`. Present summary of key decisions, open questions, and next steps.
