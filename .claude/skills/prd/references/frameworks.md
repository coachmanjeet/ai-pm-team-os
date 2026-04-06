# PRD Frameworks Reference

## Four Risks Framework (Marty Cagan)

Every feature must be validated against:

| Risk | Question | Validation Method |
|------|----------|-------------------|
| **Value** | Will users want this? | User interviews, data analysis, competitive evidence |
| **Usability** | Can users figure it out? | Prototypes, usability testing, UX review |
| **Feasibility** | Can engineering build it? | Technical spikes, architecture review, Cross-Team Dependency Review process |
| **Viability** | Does it work for the business? | Business case, licensing model, cross-platform alignment |

## MoSCoW Prioritization

| Category | Definition | Rule of Thumb |
|----------|-----------|---------------|
| **Must Have** | Feature is unusable without this | ~60% of effort |
| **Should Have** | Important, painful without but workarounds exist | ~20% of effort |
| **Could Have** | Desirable, minor impact if missing | ~20% of effort |
| **Won't Have (this time)** | Explicitly deferred | Document for future reference |

## Pre-Mortem Technique

Before finalizing the PRD:
1. Imagine the feature shipped 6 months ago and **failed completely**
2. Write down all reasons it could have failed
3. For each failure mode, add a mitigation to the PRD
4. Categories: Technical failure, adoption failure, business model failure, competitive response

## Problem Statement Formula

**[User persona]** needs **[capability]** because **[reason/job-to-be-done]**, but currently **[gap, pain point, or workaround]**.

**Good example:** "Salesforce Admins need to view real-time agent availability across deployments because enterprise AI operations require immediate assignment decisions, but currently they check each environment manually, causing 20-minute delays per session."

**Bad example:** "We need to add bed tracking." (No persona, no reason, no current pain)

## Acceptance Criteria Best Practices

- Write from the user's perspective, not the system's
- Each criterion should be independently testable
- Cover happy path AND error cases
- Include boundary conditions (max quantities, empty states, concurrent access)
- For Agentforce: always include cross-platform scenarios if applicable

### Given/When/Then Template
```
Given [a specific precondition or setup state]
When [an action is performed by the user or system]
Then [the expected observable outcome]
And [additional outcomes if needed]
```

## Success Metrics Framework

| Metric Type | Purpose | Example |
|------------|---------|---------|
| **Leading** | Predict future success | Feature activation rate, setup completion |
| **Lagging** | Confirm past success | Revenue impact, churn reduction |
| **Guardrail** | Ensure no negative side effects | Error rate stays below X%, support tickets don't increase |
