---
name: bug-report
description: Create clear, actionable bug reports for Agentforce issues that engineering can reproduce and fix. Use when documenting bugs, creating GUS tickets, or reporting issues found during testing. Includes severity/priority guidelines and impact assessment.
---

# Bug Report

Document a bug for: $ARGUMENTS

## Context Gathering

Ask (one at a time):
1. What happened?
2. What did you expect?
3. Product area? (Agentforce Builder, Evaluation & Testing, Agent Supervision & Observability, Session Tracing)
4. Steps to reproduce?
5. How often? (Always/Sometimes/Rarely)
6. Environment? (Org ID, sandbox/production, release)
7. Error messages?
8. Who reported it? (Customer, internal, GUS)
9. Business impact?

Validate understanding before writing: "Let me confirm: [summary]. Correct?"

## Bug Report Structure

```markdown
# Bug Report: [Brief Title]

**Bug ID:** [BUG-XXXX] | **Reported By:** the PM | **Date:** [Date]
**Product Area:** [Agentforce Builder/Evaluation & Testing] | **Release:** [4.2]
**Severity:** S1-S4 | **Priority:** P1-P4

## Summary
[One sentence]

## Environment
Org ID, Type, Release, Browser, Profile, Permissions

## Steps to Reproduce
1. [Step]
**Preconditions:** [Setup]

## Expected vs Actual Behavior

## Error Details
[Exact error text, console errors, debug logs]

## Impact Assessment
- Users Affected, Workaround Available, Customer Reported

## Reproducibility
| Attempt | Environment | Result |

## Technical Details
Related objects, code areas, potential root cause

## Tracking
GUS Ticket, Assigned To, Sprint, Target Fix Release
```

## Severity Guidelines

| Severity | Definition | Example |
|----------|------------|---------|
| S1 Critical | System down, data loss, no workaround | Allocation corrupts data |
| S2 High | Major feature broken, difficult workaround | Batch search wrong results |
| S3 Medium | Feature impaired, workaround available | Wrong date format |
| S4 Low | Minor/cosmetic | Button alignment off |

## Priority: P1=Fix immediately, P2=This sprint, P3=This release, P4=When possible

## Best Practices

- Be specific ("Save button returns 500 when qty > 10000" not "button doesn't work")
- Include exact steps another person can reproduce
- Attach evidence (screenshots, videos, logs)
- One bug per report
- Note workarounds

## Save Location

Save to `tracker/bugs/[date]-[brief-title].md` and `tracker/bugs.md`
