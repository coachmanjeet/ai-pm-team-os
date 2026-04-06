---
name: multi-agent-review
description: Review documents using multiple agent perspectives for Agentforce. Use when reviewing PRDs, specs, demo scripts, or documentation. Spawns a coordinated agent team for true parallel reviews with synthesized feedback.
---

# Multi-Agent Review

Review this document: $ARGUMENTS

## Process

### 1. Read the Document
- If file path, read it. If description, ask for path.
- Identify document type (PRD, spec, design, demo script, documentation)

### 2. Select Reviewers by Document Type

| Document Type | Reviewers |
|--------------|-----------|
| PRD | Engineering Lead, Product Strategist, UX Designer, Critical Thinker |
| Technical Spec | Engineering Lead, QA Engineer, Critical Thinker |
| Demo Script | Product Strategist, UX Designer |
| Documentation | UX Designer, Critical Thinker |
| Strategy | Product Strategist, Critical Thinker |

### 3. Launch Parallel Review Team

Use Agent Teams for coordinated parallel execution:

1. **Create a review team** using TeamCreate with name "review-{document-type}"
2. **Create review tasks** in the team task list, one per reviewer agent, each containing:
   - The document content or path to review
   - The review template (Strengths, Concerns, Questions, Recommendations)
   - The agent's specific focus area
3. **Spawn each reviewer as a teammate** using Task tool with:
   - `subagent_type` matching the agent name (e.g., "engineering-lead", "ux-designer")
   - The review instructions in the prompt
4. **All reviewers execute in parallel**, each producing their review
5. **Collect results** as teammates complete their tasks and send messages

### 3a. Timeout and Partial Results

- Set `max_turns: 15` on each reviewer teammate to prevent runaway execution
- If a reviewer has not completed after other reviewers finish, proceed with available results
- Note which reviewers completed vs. timed out in the synthesis
- If fewer than half the reviewers complete, warn the PM and offer to retry individual reviews

### 4. Synthesize Feedback

After all reviewers complete, synthesize into:

```markdown
## Review Summary

### Consensus Points
- Points where multiple reviewers agree

### Critical Issues (Must Fix)
- Issues flagged by 2+ reviewers or any single high-severity finding

### Concerns (Should Address)
- Individual reviewer concerns worth addressing

### Questions Requiring Decision
- Open questions that need the PM's input

### Reviewer-Specific Highlights
Brief summary of each reviewer's unique contribution

### Priority Actions
1. **Must-fix** items (blocking issues)
2. **Should-fix** items (quality improvements)
3. **Consider** items (enhancements)
```

### 5. Clean Up
- Shut down teammates gracefully via SendMessage with type "shutdown_request"
- Delete the team using TeamDelete
- Offer to fix critical issues immediately

## Customization

- `/review with engineering and ux` - Specific agents only
- `/review technical` - Engineering Lead, QA Engineer, Critical Thinker
- `/review strategic` - Product Strategist, Critical Thinker
- `/review quick [path]` - Engineering Lead, Critical Thinker, UX Designer

## Fallback

If Agent Teams creation fails (e.g., feature not available), fall back to spawning agents via Task tool in parallel without the team coordination layer.
