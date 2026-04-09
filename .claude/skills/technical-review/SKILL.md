---
name: technical-review
description: Conduct technical reviews of feature designs, data models, and architecture proposals for Agentforce. Use when reviewing PRDs for technical feasibility, data model designs, architecture proposals, or cross-platform impacts.
context: fork
agent: engineering-lead
---

# Technical Review

Conduct technical review for: $ARGUMENTS

## Context Gathering

- Check `context/ARCHITECTURE.md` and `context/TERMINOLOGY.md`
- Check `product-development/engineering/rfcs/` for related technical designs
- Check `product-development/engineering/bug-investigations/` for historical issues in this area
- Review relevant PRDs in `docs/Releases/`
- Ask: What to review (PRD/design/data model/architecture), product area, specific concerns

## Review Agents

Invoke via Task tool for multi-perspective review:
- **Engineering Lead** — Technical feasibility, implementation approach, system design, scalability, integration patterns, platform expertise

## Review Checklist

See [references/checklist.md](references/checklist.md) for the full review checklist and output template.

**Key Areas:**
- Functional Requirements (clear, testable, edge cases, error handling)
- Data Model (objects, fields, relationships, naming standards)
- Architecture (patterns, scalability, performance, integration points)
- Security (permissions, data access, audit, FLS)
- Cross-Platform (impacts, Cross-Team Dependency Reviews, dependencies, alignment)
- Platform (platform limits, bulk ops, async processing, API limits)

## Output Format

```markdown
# Technical Review: [Feature/Design Name]

**Overall Assessment:** Approved | Conditional | Needs Revision

## Key Findings
- [Finding 1]

## Issues Found
### Critical (Must Fix)
**Issue:** [Description] | **Impact:** [Why] | **Recommendation:** [Fix]

### Major (Should Fix)
### Minor (Consider)

## Questions for Authors

## Decision: Approved | Approved with Conditions | Not Approved
```

## Save Location

Save to `projects/[project-name]/reviews/[type]-review-[date].md`
