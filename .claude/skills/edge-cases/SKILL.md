---
name: edge-cases
description: Identify edge cases and error states for Agentforce features during the design phase. Use when reviewing PRDs, specs, or designs before development. Covers input validation, data states, system states, permissions, flow interruptions, integration failures, and Agentforce-specific scenarios.
---

# Edge Cases Analysis

Identify edge cases for: $ARGUMENTS

## Context Gathering

- Ask: Feature/flow, main user actions, data involved, integrations
- Read relevant PRD/spec from `product-development/product/PRDs/` or `product-development/product/specs/`

## Edge Case Categories

### 1. Input Validation
Empty/null values, special characters, boundary values (min/max), invalid formats, extremely long inputs

### 2. Data States
Empty states (no records, first-time user), single vs many records, extreme volumes (1M+), deep nesting, circular references, orphaned records, stale/cached data

### 3. System States
Loading states, offline/disconnected, timeouts, partial failures, concurrent modifications, session expiration mid-operation

### 4. Permissions & Access
No permission to view, read-only access, partial permissions, cross-object conflicts, sharing rule violations, FLS restrictions

### 5. User Flow Interruptions
Browser back/forward, page refresh mid-transaction, tab switching, session timeout, network interruption during save

### 6. Integration Failures
External API unavailable, data sync conflicts, rate limiting, auth token expiration, webhook failures, LLM timeouts

### 7. Agentforce Specific
Cross-platform Cross-Team Dependency Review approval pending, multi-agent session conflicts, agent availability during deployment change, session double-booking, insufficient LLM capacity, agent transfer failures, data sync errors, API query timeouts

## Output Format

```markdown
# Edge Cases: [Feature Name]

**Feature:** [Name] | **Release:** [4.2] | **Date:** [Date]

## Summary
Total: X | Critical: X | High: X | Medium: X | Low: X

## Edge Cases by Category

### [Category Name]
| ID | Scenario | Trigger | Severity | Expected Behavior | UX Message |
|----|----------|---------|----------|-------------------|------------|
| EV-001 | [Scenario] | [How] | [Level] | [What should happen] | [Error msg] |

## Recommendations
### Must Handle Before GA
- [ ] [Edge case ID] — [Description]
### Should Handle
- [ ] [Edge case ID] — [Description]
```

## Best Practices

- Think from multiple perspectives: user, attacker, admin
- Consider scale: 1 record vs 1 million
- Test boundaries: exactly at limits, just below, just above
- Plan graceful degradation
- Write clear error messages

## Save Location

Save to `product-development/product/PRDs/[feature-name]/edge-cases.md`
