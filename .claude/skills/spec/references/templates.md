# Specification Templates

## Full Specification Structure

```markdown
# Feature Specification: [Feature Name]

**Release:** [4.2] | **PRD:** [Link] | **Status:** Draft/Review/Approved
**Author:** the PM | **Last Updated:** [Date]

## Overview
Brief description of what this feature does and why it matters.

## User Stories
As a [persona], I want to [action], so that [benefit].

## Functional Requirements

| ID | Requirement | Priority | Notes |
|----|-------------|----------|-------|
| FR-001 | [Requirement] | Must Have | |
| FR-002 | [Requirement] | Should Have | |

## Non-Functional Requirements

| ID | Requirement | Target |
|----|-------------|--------|
| NFR-001 | Performance | [e.g., <2s page load] |
| NFR-002 | Scale | [e.g., 10M records] |
| NFR-003 | Security | [e.g., FLS enforced] |

## Data Model

### New Objects
| Object | API Name | Purpose | Key Fields |
|--------|----------|---------|------------|
| [Object] | [API_Name__c] | [Purpose] | [Fields] |

### Modified Objects
| Object | Changes | Migration Impact |
|--------|---------|-----------------|
| [Object] | [What's changing] | [Impact] |

### Relationships
- [Object A] → [Object B] (Master-Detail/Lookup)

## UI/UX Specifications

### Screens/Components
| Screen | Purpose | Key Elements | Design System Components |
|--------|---------|--------------|-----------------|
| [Screen] | [Purpose] | [Elements] | [Components] |

### User Flows
1. [Step 1] → 2. [Step 2] → 3. [Step 3]

## API Specifications

| Endpoint | Method | Purpose | Auth |
|----------|--------|---------|------|
| [Endpoint] | [GET/POST] | [Purpose] | [Permission] |

## Business Logic
- [Rule 1]: When [condition], then [behavior]
- [Validation]: [Formula] → [Error message]

## Acceptance Criteria

**Scenario: [Name]**
- Given [precondition]
- When [action]
- Then [expected result]

## Dependencies
- [Internal dependency]
- [External dependency]

## Cross-Platform Considerations
- Cross-Team Dependency Reviews required: [Yes/No — which clouds]
- Data model harmonization: [Details]
- Shared objects: [Objects shared across clouds]

## Out of Scope
- [What's explicitly not included]
```

## Requirement Priority Definitions

| Priority | Meaning | Criteria |
|----------|---------|----------|
| Must Have | Required for release | Feature is broken without it |
| Should Have | Expected but not blocking | Significant value, can ship without |
| Could Have | Nice to have | Enhances experience |
| Won't Have | Explicitly deferred | Documented for future releases |
