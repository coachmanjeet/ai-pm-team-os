# Customer Template

Copy this structure when adding a new customer account.

## Customer CLAUDE.md Template

```markdown
# [Customer Name]

**Segment:** [Enterprise / Commercial / SMB]
**Industry:** [Industry]
**Agentforce Products:** [Which Agentforce products they use]
**Account Status:** [Active / Prospect / Churned]

## Key Contacts

| Name | Title | Role in Decisions | Last Contact |
|------|-------|-------------------|-------------|
| [Name] | [Title] | [Champion / Evaluator / Decision Maker] | [Date] |

## Account Summary

[2-3 sentences: what they use, key pain points, strategic importance]

## Doc Index

- `calls/` — Meeting and call summaries (most recent first)
- `notes.md` — Ongoing account notes, context, and strategy
```

## Call Summary Structure (use `/customer-call` skill)

```markdown
# Call: [Topic]

**Date:** [YYYY-MM-DD] | **Duration:** [minutes]
**Attendees:** [Names and roles from both sides]
**Customer:** [Customer Name] | **Segment:** [Segment]

## Topics Discussed
- [Topic 1] #tag
- [Topic 2] #tag

## Pain Points Mentioned
- [Pain point with context]

## Feature Requests / Feedback
- [Request] — Priority: [High/Medium/Low] — Area: [Product area]

## Action Items
- [ ] [Action] — Owner: [Name] — Due: [Date]

## Sentiment
[Positive / Neutral / Negative] — [Brief explanation]

## Key Quotes
> "[Notable quote from the customer]"
```
