---
name: customer-call
description: Summarize a customer call in structured format for cross-customer synthesis. Use after any customer meeting, call, or interaction. Ensures consistent format across all team contributors.
---

# Customer Call Summary

Summarize a customer interaction: $ARGUMENTS

## Context Gathering

- Check `product-development/product/customers/` for existing customer folder
- If customer folder exists, read their `CLAUDE.md` for account context
- If no folder exists, create one using `product-development/product/customers/TEMPLATE-CUSTOMER.md`

## Process

### 1. Collect Details (ask ONE question at a time)

1. "Which customer?" (match to existing folder or create new)
2. "When was the call and who attended?"
3. "What were the main topics discussed?"
4. "Any pain points, feature requests, or feedback?"
5. "Any action items?"
6. "Overall sentiment — positive, neutral, or negative?"

### 2. Generate Structured Summary

```markdown
# Call: [Topic]

**Date:** [YYYY-MM-DD] | **Duration:** [minutes]
**Attendees:** [Names and roles from both sides]
**Customer:** [Customer Name] | **Segment:** [Segment]

## Topics Discussed
- [Topic] #[tag: builder, eval, observability, trust, grid, improvement, general]

## Pain Points Mentioned
- [Pain point with context]

## Feature Requests / Feedback
- [Request] — Priority: [High/Medium/Low] — Area: [Product area from pmos.config.yml focus_areas]

## Action Items
- [ ] [Action] — Owner: [Name] — Due: [Date]

## Sentiment
[Positive / Neutral / Negative] — [Brief explanation]

## Key Quotes
> "[Notable quote from the customer]"
```

### 3. Save

- Save to `product-development/product/customers/[customer-name]/calls/[YYYY-MM-DD]-[topic-slug].md`
- Update `product-development/product/customers/[customer-name]/CLAUDE.md` "Last Contact" date if needed

## Tags

Use consistent tags for cross-customer search:
`#builder` `#eval` `#observability` `#trust` `#grid` `#improvement` `#onboarding` `#performance` `#integration` `#pricing` `#competition`

## Important

- Ask questions ONE AT A TIME
- Use exact product area names from `pmos.config.yml`
- Tag topics for easy cross-customer synthesis
- Preserve direct customer quotes when impactful
