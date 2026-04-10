---
paths:
  - "product-development/**"
---

# Reviewing Cross-Team Proposals

When another team shares a proposal (data model change, feature design, architecture decision) for feedback, follow this sequence:

## The Right Approach: Clarify, Understand, Assess, Respond

| Step                    | Focus                             | Example Questions                                                                 |
| ----------------------- | --------------------------------- | --------------------------------------------------------------------------------- |
| **1. Clarify**    | What exactly is being proposed?   | Is this field required or optional? Static or dynamic enum? What's the data type? |
| **2. Understand** | Why? What problem does it solve?  | What's the use case? Who benefits? Why this approach?                             |
| **3. Assess**     | Does this affect my domain?       | Tag relevant stakeholders for their perspective                                   |
| **4. Respond**    | Support, concerns, or suggestions | Only after steps 1-3 are complete                                                 |

## Common Mistakes to Avoid

- **Don't jump to impact analysis** before understanding the basics of the proposal
- **Don't assume conflicts** without first clarifying what's being proposed
- **Don't overcomplicate** - start with simple clarifying questions (required?, type?, extensibility?)
- **Don't skip stakeholder input** - tag relevant stakeholders for their domain perspective

## Good Clarifying Questions Pattern

1. Data model basics: Required vs optional? Static vs dynamic?
2. Extensibility: Who can extend it? When? Code change needed?
3. Use case clarity: What problem does this solve? Who's the user?
4. Cross-team impact: Loop in relevant stakeholders before forming opinion

*Learning source: Cross-team proposal review - jumped to strategic conflict analysis before asking basic clarifying questions about the data model.*
