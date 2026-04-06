---
name: roadmap
description: Create and visualize product roadmaps for Agentforce across releases (250-266+). Use when creating roadmaps, planning releases, prioritizing features, visualizing timelines, or creating customer-facing roadmap views. Combines Agentforce release context with prioritization frameworks (RICE, MoSCoW, ICE).
---

# Roadmap

Generate roadmap view for: $ARGUMENTS

## Context Gathering

Before creating, silently read:
- `context/PRODUCT.md` for strategic context
- `docs/Releases/` for committed features
- `tracker/ideas.md` for backlog items

Apply: GEM model (Growth/Engagement/Monetization), three horizons (Now/Next/Later), every item connects to strategic goals. Roadmaps are communication tools, not contracts.

## Process

### 1. Define Scope
- **Product area:** Agentforce Builder, Evaluation & Testing, full Agentforce
- **Time horizon:** Quarterly, annual, multi-year
- **Audience:** Internal (detail + dates), Leadership (themes + risks), Customers (benefits + timeframes)
- **Detail level:** Strategic themes, features, or stories

### 2. Choose Roadmap Format

| Format | Best For | See Reference |
|--------|----------|---------------|
| **Release-Based** | Internal teams tracking release cycles (4.1, 4.2, 4.3) | [references/templates.md](references/templates.md) |
| **Visual Timeline** | Quarterly views with cross-release features | [references/templates.md](references/templates.md) |
| **Theme-Based** | Strategy presentations showing multi-release arcs | [references/templates.md](references/templates.md) |
| **Customer-Facing** | External roadmap with benefits focus, no dates | [references/templates.md](references/templates.md) |

### 3. Prioritize with Frameworks

**RICE Score** = (Reach x Impact x Confidence) / Effort
- Reach: users affected per quarter
- Impact: 3=massive, 2=high, 1=medium, 0.5=low, 0.25=minimal
- Confidence: 100%=high, 80%=medium, 50%=low
- Effort: person-months

**When RICE isn't enough**, also consider:
- **MoSCoW** for must-have vs nice-to-have within a release
- **ICE** (Impact, Confidence, Ease) for quick scoring
- **Value vs Effort 2x2** for visual prioritization

### 4. Show Dependencies
- Cross-feature dependencies within Agentforce
- Cross-platform dependencies (may need Cross-Team Dependency Review)
- External dependencies (partner teams, infrastructure)

### 5. Distinguish Commitment Levels
- **Committed** — In development, resourced
- **Planned** — High confidence, scoped
- **Exploratory** — Under consideration, may change

## Output

Save to `projects/roadmaps/[area]-roadmap.md`. Include strategic themes, feature list with priorities, dependencies, and risks.
