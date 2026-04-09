---
name: research
description: Conduct and synthesize research for Agentforce product decisions. Use when doing user research synthesis, market research, technical research, or combining insights from multiple sources. Includes thematic analysis, triangulation, and qual/quant integration methodologies.
context: fork
---

# Research

Conduct research on: $ARGUMENTS

## Context Gathering

- Check `memory/` files for relevant past learnings
- Check `research/` for existing research on this topic
- Check `product-development/product/customers/` for relevant customer call data and feedback
- Reference `context/TERMINOLOGY.md` for domain terms

## Process

### 1. Define Scope
- What question are we answering?
- What type of research? (see below)
- What decision will this inform?

### 2. Research Types

| Type | When to Use | Key Activities |
|------|------------|----------------|
| **User Research Synthesis** | Combining interview/feedback data | Thematic analysis, pattern identification |
| **Competitive** | Understanding competitor approaches | Use `/competitive-analysis` skill instead |
| **Market** | Sizing opportunity, industry trends | TAM/SAM/SOM, trend analysis |
| **Technical** | Platform capabilities, integration patterns | Architecture review, API analysis |

### 3. Synthesis Methodology

**For qualitative data** (interviews, feedback):
1. **Code the data** — Tag each insight with themes (pain point, need, behavior, workaround)
2. **Identify patterns** — What themes appear across 3+ sources?
3. **Triangulate** — Cross-reference with quantitative data where possible
4. **Prioritize insights** — By frequency, intensity, and strategic relevance

**For quantitative data** (surveys, analytics):
1. **Segment the data** — By persona, account size, geography, feature area
2. **Identify outliers** — What's surprising or counterintuitive?
3. **Correlate** — What behaviors predict retention, adoption, satisfaction?

**Qual + Quant integration:**
- Quant tells you WHAT is happening (metrics, frequencies)
- Qual tells you WHY (motivations, context, workarounds)
- Strongest insights have both: "65% of distributors report this pain point [quant], and interviews reveal they're working around it by [specific behavior] [qual]"

### 4. Output Structure

```
# Research: [Topic]

**Date:** [Date] | **Decision:** [What this informs] | **Sources:** [Count]

## Key Findings
- [Finding with evidence]

## Insights
- What this means for Agentforce

## Opportunities
- [Opportunity identified]

## Recommendations
- [Action to take]

## Sources
- [List sources]
```

### 5. Save
Save to `research/[topic]-[date].md`

## Quality Checklist
- Are findings evidence-based, not assumption-based?
- Have you triangulated (multiple sources confirming the same insight)?
- Are recommendations actionable and specific?
- Have you flagged where evidence is thin or conflicting?
