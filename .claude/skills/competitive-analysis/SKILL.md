---
name: competitive-analysis
description: Conduct competitive analysis for Agentforce features against SAP, Oracle, Microsoft Dynamics, and others. Use when comparing competitors, building feature matrices, analyzing competitive positioning, or preparing competitive briefs. Combines Agentforce domain knowledge with competitive intelligence frameworks.
context: fork
---

# Competitive Analysis

Conduct competitive analysis for: $ARGUMENTS

## Context Gathering

- Read `context/PRODUCT.md` for Agentforce positioning
- Check `product-development/product/competitive-research/` for existing competitor intel
- Check `research/` for existing competitive research
- Check `memory/decisions.md` for past competitive decisions

## Process

### 1. Define Scope
- What feature/capability is being analyzed?
- Which competitors to compare? (see default set below)
- What's the audience? (internal strategy, sales enablement, leadership)

### 2. Competitor Landscape

**Primary (direct feature overlap):**
- [Competitor A - direct product overlap]
- [Competitor B - direct product overlap]
- [Competitor C - direct product overlap]

**Secondary (partial overlap):**
- [Competitor D - partial feature overlap]
- [Competitor E - partial feature overlap]

**Adjacent (different approach, same problem):**
- Industry-specific point solutions
- Custom-built extensions or internal tools

### 3. Analysis Framework

For each competitor, evaluate using **four lenses**:

| Lens | Questions |
|------|-----------|
| **Product** | What do they offer? Feature depth? Platform approach? |
| **Positioning** | How do they position? What's their messaging? |
| **Strengths** | Where do they genuinely beat us? Why do customers choose them? |
| **Weaknesses** | Where do they fall short? What are customer complaints? |

### 4. Feature Comparison Matrix

| Capability | Salesforce | SAP | Oracle | MS Dynamics |
|------------|-----------|-----|--------|-------------|
| [Capability] | Rating | Rating | Rating | Rating |

Rating scale: **Strong** / **Partial** / **Not Available** / **Unknown**

### 5. Strategic Implications

- **Where we win** — Our genuine differentiators
- **Where we lose** — Gaps to address or position around
- **Market trends** — Where the category is heading
- **Strategic response** — Invest, partner, position, or accept gap

See [references/methodology.md](references/methodology.md) for deeper frameworks (positioning analysis, win/loss patterns).

## Output

Save to `research/competitive-[topic]-[date].md`. Include executive summary, feature matrix, competitor profiles, and strategic recommendations.
