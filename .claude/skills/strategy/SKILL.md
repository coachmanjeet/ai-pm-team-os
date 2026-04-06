---
name: strategy
description: Draft strategy memos for Agentforce that align teams around major product decisions. Use when writing strategy memos, vision documents, decision memos, or planning memos. Integrates DHM model, positioning frameworks, and explicit trade-off thinking.
context: fork
agent: product-strategist
---

# Strategy Memo

Create a strategy memo for: $ARGUMENTS

## Frameworks

Before writing, apply:
- DHM model (Delight, Hard-to-copy, Margin) to evaluate options
- 7 Powers framework for durable competitive advantage (Hamilton Helmer)
- Positioning framework from April Dunford
- Strategy should make explicit trade-offs (strategy should hurt)
- Strategic narrative structure (Andy Raskin's enemy/promised land)
Weave insights naturally into the memo.

## Context Gathering

- Check `context/PRODUCT.md` for positioning
- Check existing strategy docs in `projects/`
- Check `docs/` for relevant feature documentation
- Ask: Strategic topic, current situation, recommendation, alternatives, risks, resources, success metrics

## Memo Structure

```markdown
# Strategy Memo: [Topic]

**Author:** the PM | **Date:** [Date]
**Status:** Draft | In Review | Approved
**Decision Needed By:** [Date]

## TL;DR
[2-3 sentence summary with clear recommendation]

## Context & Current State
### Background — [Why this decision is needed now]
### Current Situation — [What's happening today]
### Problem Statement — [What we're solving]

## Recommendation
**We should [specific action]** because [primary reason].
### Key Benefits
1. [Benefit]

## Alternatives Considered
| Option | Pros | Cons | Why Not |

## Implementation Plan
### Phase 1: [Name] (Timeline) — [Actions]
### Phase 2: [Name] (Timeline) — [Actions]

## Risks & Mitigation
| Risk | Likelihood | Impact | Mitigation |

## Resource Requirements
- Engineering, UX, Cross-platform, Cross-Team Dependency Review Process

## Success Metrics
| Metric | Baseline | Target | Timeline |

## Open Questions
- [ ] [Question] — Owner: [Name]
```

## Memo Types

- **Vision Memo** — Future state and long-term direction
- **Decision Memo** — Choosing between options
- **Planning Memo** — Execution strategy
- **Problem/Solution Memo** — Addressing a specific challenge

## Best Practices

- Start with TL;DR (executives read this first)
- Show your work (include alternatives considered)
- Be specific (timelines, metrics, resources)
- Be honest about risks

## Save Location

Save to `projects/[project-name]/strategy-[topic].md`
