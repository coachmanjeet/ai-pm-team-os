---
name: demo-script
description: Create demo scripts for Agentforce features with story-driven flows, talking points, and data requirements. Use when preparing demos for release reviews, partner webinars, customer demos, or Conference sessions. Includes demo story framework, step-by-step flows, backup plans, and Q&A preparation.
---

# Demo Script

Create a demo script for: $ARGUMENTS

## Context Gathering

- Read `context/PRODUCT.md` for feature context
- Read `context/PERSONAS.md` for audience understanding
- Check `demos/` for existing demo scripts
- Review relevant PRDs in `product-development/product/PRDs/`
- Ask: Feature, audience, duration, demo type (Release/Partner/Customer/Conference)

## Demo Script Structure

```markdown
# Demo Script: [Feature Name]

**Feature:** [Feature] | **Duration:** [X min] | **Audience:** [Who]
**Type:** Release Demo | Partner Webinar | Customer Demo | Conference

## Objective
[What should the audience learn or feel after this demo?]

## Key Messages
1. [Main takeaway]
2. [Supporting point]
3. [Supporting point]

## Demo Story
**Scenario:** [Business scenario]
**Persona:** [Who is the user]
**Problem:** [What problem they face]
**Solution:** [How our feature solves it]

## Demo Flow

| Step | Action | Talking Points | Duration |
|------|--------|----------------|----------|
| 1 | [What to do on screen] | [What to say] | [Time] |
| 2 | [What to do on screen] | [What to say] | [Time] |

## Demo Data Requirements
- **Accounts:** [Sample accounts needed]
- **Products:** [Sample products needed]
- **Records:** [Other records needed]
- **Configuration:** [Settings to enable]

## Backup Plan
| If This Happens | Do This |
|-----------------|---------|
| [Demo fails] | [Show screenshots] |
| [Data missing] | [Navigate to backup] |

## Q&A Preparation
**Q:** [Expected question]
**A:** [Prepared answer]
```

## Save Location

Save to `demos/[feature]-demo-script.md`
