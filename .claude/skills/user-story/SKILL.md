---
name: user-story
description: Generate well-structured user stories with acceptance criteria for Agentforce features. Use when writing user stories, creating story maps, breaking down epics, or generating bulk stories for a feature. Includes INVEST criteria, Given/When/Then format, persona references, and bulk story generation.
---

# User Story

Generate user stories for: $ARGUMENTS

## Context Gathering

- Check `context/PERSONAS.md` for persona details
- Check `context/PRODUCT.md` for product context
- Review relevant PRDs in `product-development/product/PRDs/`
- Check existing specs in `product-development/product/specs/`

## Personas Reference

Use personas from `context/PERSONAS.md`:
- Salesforce Admin, Business User, Eval Engineer
- Observability Engineer, Data Engineer
- Data Engineer, Solution Architect

## Story Format

```markdown
# User Story: [Story Title]

**ID:** US-[XXX] | **Epic:** [Parent Epic] | **Release:** [4.2]
**Priority:** P0 (Must Have) | P1 (Should Have) | P2 (Nice to Have)

## Story
**As a** [persona from PERSONAS.md]
**I want to** [action/capability]
**So that** [benefit/value/outcome]

## Acceptance Criteria

### Scenario 1: [Happy Path]
- Given [precondition]
  When [action taken]
  Then [expected result]

### Scenario 2: [Alternative Path]
- Given [precondition]
  When [action taken]
  Then [expected result]

### Scenario 3: [Error/Edge Case]
- Given [precondition]
  When [action taken]
  Then [expected result]

## Technical Notes
- **Objects/Fields:** [Salesforce objects involved]
- **Business Logic:** [Key rules]
- **Dependencies:** [What this depends on]
- **Cross-Platform:** [Cross-platform considerations]

## Definition of Done
- [ ] Code complete and reviewed
- [ ] Unit tests passing
- [ ] Acceptance criteria verified
- [ ] Documentation updated
```

## Quality Checklist (INVEST)

- **I**ndependent — Can be developed separately
- **N**egotiable — Details can be discussed
- **V**aluable — Delivers user value
- **E**stimable — Can be sized
- **S**mall — Fits in a sprint
- **T**estable — Has clear acceptance criteria

## Acceptance Criteria Tips

- Use Given/When/Then format consistently
- Cover happy path, alternatives, and errors
- Include boundary conditions
- Include permissions/access scenarios
- Be specific and testable

## Bulk Story Generation

For epics with multiple stories, generate a summary table first:

| ID | Story | Priority | Points |
|----|-------|----------|--------|
| US-001 | As a [persona], I want to [action] so that [benefit] | P0 | X |

Then detail each story using the format above.

## Save Location

- Single stories: `product-development/product/user-stories/[story-id]-[title].md`
- Epic stories: `product-development/product/user-stories/[epic-name]-stories.md`
