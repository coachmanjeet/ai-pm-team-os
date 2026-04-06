# Feature Development Workflow

Build a new feature from research through implementation-ready user stories.

## Stages

```
research → prd → review → qa → user-stories
```

## Stage Details

### 1. research
**Skill:** `/research [topic]`
**Purpose:** Understand the problem, users, and competitive landscape
**Outputs:** `research/[topic-slug].md`
**Transition:** "Research complete. Ready to draft the PRD, or want to dig deeper into any findings?"

### 2. prd
**Skill:** `/prd [topic]`
**Purpose:** Draft Product Requirements Document
**Outputs:** `projects/[topic-slug]/prd.md`
**Transition:** "PRD draft complete. Ready for multi-perspective review?"
**Quality Gate:** Edge-cases check before finalization

### 3. review
**Skill:** `/multi-agent-review [prd-path]`
**Purpose:** Multi-agent review from engineering, UX, and critical perspectives
**Outputs:** Review feedback inline or in `projects/[topic-slug]/review-feedback.md`
**Agents:** engineering-lead, ux-designer, critical-thinker
**Transition:** "Review complete. Address the feedback now, or proceed to QA scenarios?"

### 4. qa
**Skill:** `/qa-scenarios [topic]`
**Purpose:** Generate test scenarios and edge cases
**Outputs:** `projects/[topic-slug]/qa-scenarios.md`
**Transition:** "QA scenarios ready. Ready to break this into user stories?"

### 5. user-stories
**Skill:** `/user-story [topic]`
**Purpose:** Create implementation-ready user stories with acceptance criteria
**Outputs:** `projects/[topic-slug]/user-stories.md`
**Transition:** "Feature development complete! User stories ready for engineering."

## Optional Branches

At any stage, user can request:
- `/competitive-analysis` - Add competitive analysis (typically after research)
- `/edge-cases` - Deep dive on edge cases (typically before qa)
- `/technical-review` - Engineering deep-dive (typically after review)

## Artifact Naming

- Topic slug: lowercase, hyphens, no spaces (e.g., "Inventory Allocation" → "inventory-allocation")
- All artifacts go under `projects/[topic-slug]/` except initial research

## Workflow-Specific Notes

- Check `context/` files for domain knowledge before research
- PRD should reference user personas from `context/PERSONAS.md`
- Consider cross-platform dependencies during review
