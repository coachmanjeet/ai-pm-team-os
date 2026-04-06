---
name: qa-scenarios
description: Generate QA test scenarios for Agentforce features covering happy path, edge cases, negative tests, integration tests, and performance tests. Use when creating test plans, preparing QA handoff, or validating acceptance criteria.
---

# QA Test Scenarios

Generate test scenarios for: $ARGUMENTS

## Context Gathering

- Read related PRD or spec from `projects/` or `docs/Releases/`
- Understand acceptance criteria and user flows

## Test Scenario Structure

```markdown
# Test Scenarios: [Feature Name]

## Test Summary
| Category | # Tests | Priority |
|----------|---------|----------|
| Happy Path | X | P1 |
| Edge Cases | X | P2 |
| Negative Tests | X | P2 |
| Integration | X | P1 |
| Performance | X | P3 |

## Happy Path Tests

### TC-001: [Test Name]
**Priority:** P1
**Preconditions:** [Setup needed]
**Steps:**
1. [Step 1]
2. [Step 2]
**Expected Result:** [Outcome]
**Test Data:** [Data needed]

## Edge Case Tests

### TC-00X: [Edge Case Name]
**Priority:** P2
**Scenario:** [Description]
**Steps:** [Steps]
**Expected Result:** [Handling]

## Negative Tests

### TC-00X: [Negative Test Name]
**Priority:** P2
**Scenario:** [What goes wrong]
**Steps:** [Attempt invalid action]
**Expected Result:** [Error handling and message]

## Integration Tests

### TC-00X: [Integration Test]
**Priority:** P1
**Integration Point:** [System/feature]
**Steps:** [Steps]
**Expected Result:** [Integration behavior]

## Performance Tests

### TC-00X: [Performance Test]
**Priority:** P3
**Metric:** [What to measure]
**Target:** [Performance target]

## Test Data Requirements
[Data needed for testing]

## Environment Requirements
[Setup needed]
```

## Review

Use QA Engineer agent to review for completeness.

## Save Location

Save to `projects/[feature-name]/test-scenarios.md`
