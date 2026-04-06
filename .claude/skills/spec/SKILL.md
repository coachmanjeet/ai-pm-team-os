---
name: spec
description: Create detailed feature specifications for Agentforce engineering handoff. Use when writing feature specs, technical specifications, data model designs, API specifications, or detailed requirements documents. Includes functional/non-functional requirements, data model, UI/UX specs, business logic, and cross-platform considerations.
---

# Feature Specification

Create a specification for: $ARGUMENTS

## Context Gathering

- Read related PRD from `projects/` or `docs/Releases/`
- Read `context/PRODUCT.md` and `context/ARCHITECTURE.md`
- Check `context/TERMINOLOGY.md` for correct object/field names
- Understand existing data model and cross-platform dependencies

## Process

### 1. Scope the Specification

Ask:
- What feature needs a spec?
- Is there an existing PRD to reference?
- What's the target release?
- Any known data model changes?

### 2. Write Specification

See [references/templates.md](references/templates.md) for the full template structure.

**Required sections:**
- **Overview** — What and why, linked to PRD
- **Functional Requirements** — FR table with IDs, MoSCoW priority
- **Non-Functional Requirements** — Performance, scale, security targets
- **Data Model** — New/modified objects, fields, relationships
- **UI/UX Specifications** — Screens, components, user flows
- **Business Logic** — Rules, validations, automations
- **Acceptance Criteria** — Given/When/Then for each FR
- **Cross-Platform Considerations** — Cross-Team Dependency Reviews required, data model harmonization
- **Dependencies** and **Out of Scope**

### 3. Review

Use Engineering Lead and Solution Architect agents to review for:
- Data model correctness
- API design consistency
- Cross-platform impact
- Performance implications

### 4. Save

Save to `projects/[feature-name]/spec.md`

## Output

Provide a specification document detailed enough for engineering handoff with traceable requirements.
