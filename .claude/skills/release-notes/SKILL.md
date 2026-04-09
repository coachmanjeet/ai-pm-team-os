---
name: release-notes
description: Create customer-facing release notes for Agentforce features. Use when writing release notes, feature announcements, or what's-new content for any release. Includes Salesforce Help style, partner webinar format, and internal communication formats.
---

# Release Notes

Create release notes for: $ARGUMENTS

## Context Gathering

- Read related PRD and spec from `product-development/product/PRDs/` or `product-development/product/specs/`
- Check `context/PERSONAS.md` for target personas
- Check `context/TERMINOLOGY.md` for correct terms
- Reference `context/WRITING-GUIDE.md` for voice and tone
- Understand feature benefits and getting-started steps

## Release Notes Structure

```markdown
## [Feature Name]

### What's New
[Benefit-focused description in 2-3 sentences. Lead with outcome, not mechanism.]

### Why It Matters
[Business value and customer impact — use customer language]

### Who Benefits
- [Persona 1]: [How they benefit]
- [Persona 2]: [How they benefit]

### How It Works
[Brief explanation of key functionality]

### Getting Started
1. [Step to enable/configure]
2. [Step to start using]

### Requirements
- **Edition:** [Required editions]
- **Permissions:** [Required permissions]
- **Prerequisites:** [Any prerequisites]
```

## Format Variants

**Salesforce Release Notes** — Follow standard format with REQUIRED EDITIONS callout
**Partner Webinar** — More detailed with use case examples
**Internal Communication** — Include technical details and dependencies

## Writing Guidelines

- Lead with benefits, not features
- Active voice, customer language
- Avoid internal jargon
- Keep sentences short
- Include specific examples
- Use Salesforce terminology from `context/TERMINOLOGY.md`

## Review

Use Content Writer agent to review for:
- Customer-friendly language
- Benefit-focused messaging
- Appropriate tone

## Save Location

Save to `product-development/product/release-notes/[release]-release-notes.md`
