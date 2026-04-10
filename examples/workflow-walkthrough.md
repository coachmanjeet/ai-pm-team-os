# Workflow Walkthrough: Session Trace Comparison View

This shows what a complete `/workflow feature session-trace-comparison` produces — from research through implementation-ready user stories.

---

## Stage 1: `/research session-trace-comparison`

**What the skill produced:**

> **Problem:** Observability Engineers debugging agent behavior currently view one session trace at a time. When an agent suddenly starts failing or behaving differently, they have no way to compare a working trace against a broken one side-by-side. This forces manual tab-switching and mental diffing — slow, error-prone, and frustrating at incident time.
>
> **Evidence:**
> - 3 of 6 customer calls in Q1 mentioned trace comparison as a pain point
> - Internal dogfooding team reports spending 15-20 min per comparison manually
> - Competitor Sierra ships a basic diff view; Microsoft Copilot Studio does not
>
> **Opportunity:** A side-by-side comparison view with step-level diffing would reduce debugging time by ~60% and strengthen our observability differentiation vs. competitors.

---

## Stage 2: `/prd session-trace-comparison`

**What the skill produced (abbreviated):**

> ### Problem Statement
> Observability Engineers cannot compare session traces side-by-side, forcing manual tab-switching during incident debugging. This increases MTTR and reduces confidence in root cause analysis.
>
> ### User Persona
> **Sanjay Patel** — Observability Engineer (from `context/PERSONAS.md`)
> - Monitors agent performance across 50+ agents
> - Needs to quickly identify what changed when agent behavior degrades
>
> ### Requirements (MoSCoW)
> | ID | Requirement | Priority |
> |----|-------------|----------|
> | FR-01 | Select two traces for side-by-side comparison | Must Have |
> | FR-02 | Highlight step-level differences (added/removed/changed) | Must Have |
> | FR-03 | Filter comparison to specific step types | Should Have |
> | FR-04 | Share comparison view via URL | Should Have |
> | FR-05 | Compare traces across different agent versions | Could Have |
>
> ### Success Metrics
> - MTTR reduction: 30%+ for trace-related investigations
> - Feature adoption: 40% of active Obs Engineers use within 60 days
> - User satisfaction: CSAT 4.2+ on comparison workflow

---

## Stage 3: `/multi-agent-review`

**Three agents reviewed the PRD in parallel. Key feedback:**

> **Engineering Lead:**
> "FR-02 step-level diffing needs clarity on what 'changed' means for non-deterministic LLM outputs. Two traces will never have identical LLM responses — define what constitutes a meaningful difference vs. expected variance. Also flag: trace data lives in Data Cloud, so comparison queries may hit SOQL governor limits for traces with 100+ steps."
>
> **Critical Thinker:**
> "Pre-mortem: This feature fails if engineers can't find the two traces to compare in the first place. The PRD assumes users already know which traces matter. Consider: how does the user discover which trace to compare against? A 'last known good' bookmark or baseline trace concept may be prerequisite."
>
> **UX Designer:**
> "Side-by-side assumes wide screens. Mobile and laptop users will struggle. Consider a unified timeline view with inline diffs as an alternative layout. Also: color-coding differences needs to be accessible — don't rely on red/green alone."

---

## Stage 4: `/qa-scenarios session-trace-comparison`

**What the skill produced (excerpt):**

> ### TC-001: Happy Path — Compare Two Traces
> **Priority:** P1
> **Preconditions:** Two completed session traces exist for the same agent
> **Steps:**
> 1. Navigate to Session Trace list
> 2. Select first trace (checkbox)
> 3. Select second trace (checkbox)
> 4. Click "Compare" button
> **Expected Result:** Side-by-side view opens with step-level diff highlighting
>
> ### TC-005: Edge Case — Traces with Different Step Counts
> **Priority:** P2
> **Scenario:** Trace A has 12 steps, Trace B has 8 steps (agent took a different path)
> **Expected Result:** Aligned steps shown where possible; unmatched steps highlighted as additions/removals
>
> ### TC-009: Performance — Large Trace Comparison
> **Priority:** P3
> **Scenario:** Both traces have 200+ steps
> **Target:** Comparison view loads in <3 seconds

---

## Stage 5: `/user-story session-trace-comparison`

**What the skill produced (excerpt):**

> ### US-001: Compare Two Session Traces Side-by-Side
> **As an** Observability Engineer
> **I want to** select two session traces and view them side-by-side
> **So that** I can quickly identify what changed in agent behavior between a working and broken interaction
>
> **Acceptance Criteria:**
> - Given I am on the Session Trace list view
>   When I select two traces and click "Compare"
>   Then a side-by-side comparison view opens showing both traces
> - Given I am in the comparison view
>   When steps differ between traces
>   Then the differences are visually highlighted with accessible colors
> - Given one trace has more steps than the other
>   When viewing the comparison
>   Then unmatched steps are shown as additions or removals

---

## What This Demonstrates

This entire flow was produced by **skills** and reviewed by **agents**. The PM directed the process; the system did the heavy lifting:

- **5 skills** executed in sequence (research, prd, multi-agent-review, qa-scenarios, user-story)
- **3 agents** provided parallel review feedback that caught real issues (LLM non-determinism, discovery UX, accessibility)
- **Context files** were automatically referenced (PERSONAS.md for Sanjay, ARCHITECTURE.md for Data Cloud constraints, COMPETITIVE.md for Sierra comparison)
- **Total PM effort:** ~30 minutes of steering and decision-making, not hours of writing
