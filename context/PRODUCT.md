---
owner: PM Team
last_updated: 2026-04-02
referenced_by: product-strategist, executive-stakeholder, data-analyst
---

# Agentforce - Product Overview

## Mission
Agentforce enables enterprises to deploy autonomous AI agents that work 24/7 alongside humans — grounded in CRM and Data Cloud data, protected by enterprise-grade trust, and measurably improving business outcomes across every customer, employee, and partner experience.

## Platform
Agentforce is a native Salesforce platform capability, not a standalone SaaS. It runs inside the Salesforce Platform (multi-tenant cloud), deeply integrated with CRM data, Data Cloud, Flow, Apex, and AppExchange. Agents are built, deployed, and monitored without leaving the Salesforce ecosystem. AgentExchange serves as the marketplace for pre-built agent templates and actions.

## Editions / Packaging

- **Agentforce (Included)** - Base agent capabilities included with eligible Salesforce licenses. Covers standard topics, limited actions, and basic Agent Builder access.
- **Agentforce Flex Credits** - Usage-based pricing at $0.10/conversation. For orgs that want to scale agent usage beyond included entitlements.
- **Agentforce for Service** - Pre-built service agent with deep Service Cloud integration. Deflects cases, escalates with context, handles voice.
- **Agentforce for Sales** - SDR-style outreach, meeting prep, pipeline coaching, follow-up automation.
- **Agentforce Platform** - Full build-your-own capability for custom enterprise agents with advanced reasoning, multi-agent orchestration, and enterprise integrations.

## Key Product Areas

### Agentforce Builder
Low-code / pro-code environment for creating agents. Define Topics (what the agent handles), Actions (what it can do), and Instructions (how it should behave). Admins use the natural-language builder; developers extend with Apex and Flow. Agent Testing Center enables pre-deployment evaluation with synthetic conversations.

### Atlas Reasoning Engine
The core AI reasoning layer that drives all Agentforce agents. Interprets user intent, selects relevant topics, chains actions, handles multi-turn conversations, and decides when to escalate to a human. Powers deterministic + LLM hybrid reasoning via Agentforce Script.

### Evaluation & Testing
Framework for measuring agent quality before and after deployment. Includes the Agent Testing Center (conversation-level test suites), automated regression testing on agent updates, and the Eval Score rubric for accuracy, helpfulness, and safety. Eval Engineers own this surface.

### Session Tracing & Observability
Detailed logs of every agent reasoning step, action call, data retrieval, and decision branch. Session Trace Viewer provides turn-by-turn inspection. Feeds the Observability Dashboard for aggregate metrics: CSAT, deflection rate, escalation rate, avg handle time, failure modes.

### Multi-Agent Harness (Agentforce Grid)
Orchestration layer for coordinating multiple specialized agents on complex tasks. A Supervisor Agent decomposes goals, routes sub-tasks to Worker Agents, aggregates results, and handles failures. Enables "deep research" and multi-step workflows that exceed a single agent's scope.

### Agent Supervision & Observability
Real-time and async monitoring of deployed agents. Supervisors can watch live sessions, intervene, correct agent behavior, and flag sessions for review. Anomaly detection surfaces agents behaving outside expected patterns. Feeds back into improvement loops.

### Auto Agent Improvement & Data-Driven Feedback
Closed-loop system connecting agent outcomes (CSAT, resolution, escalation) back to training signals. Bad sessions are flagged, reviewed, and used to refine instructions, topics, and action configurations. Powers the "Improve" tab in Agent Builder.

## Technical Foundation
- Built on Salesforce Platform (multi-tenant, hyperforce-ready)
- Atlas Reasoning Engine for LLM orchestration and reasoning
- Einstein Trust Layer for security, PII masking, and audit
- Data Cloud for real-time grounding and customer data unification
- Salesforce Flow + Apex for deterministic action execution
- MCP (Model Context Protocol) for third-party tool integrations
- Agentforce Script for deterministic + LLM hybrid reasoning paths

## Key Integrations
- **CRM:** Sales Cloud, Service Cloud, Marketing Cloud, Commerce Cloud
- **Data:** Data Cloud (real-time customer profiles, RAG grounding)
- **Automation:** Salesforce Flow, Apex Classes, REST APIs
- **Marketplace:** AgentExchange (pre-built actions, templates, partner agents)
- **External Tools:** MCP Servers, third-party APIs, webhooks
- **Voice:** Agentforce Voice (telephony integration for voice-based agents)
- **Identity:** Salesforce Identity, SSO, Named Credentials

## Use Cases
- **Customer Service** - Deflect tier-1 cases, resolve billing/order inquiries, handle returns, escalate complex issues with full context
- **Sales Development** - Qualify leads, draft personalized outreach, prep reps for meetings, automate follow-ups
- **Employee Support (HR/IT)** - Answer policy questions, process PTO requests, provision software access, reset passwords
- **Deep Research** - Multi-agent synthesis of CRM data, web sources, and internal docs for account or market research
- **Coaching & Teaching** - Role-play simulations for sales reps, onboarding assistants for new employees
- **Product Recommendation** - Context-aware product/service suggestions grounded in customer history and Data Cloud profiles

## Industries
Healthcare, Banking & Financial Services, Retail & Commerce, Manufacturing & Operations, Communications, Media & Technology, Public Sector

## Compliance & Trust
- Einstein Trust Layer (PII detection, data masking, toxicity filtering, audit logging)
- SOC 2 Type II certified
- GDPR compliant
- HIPAA-eligible on Healthcare Cloud configurations
- Zero-retention data policy with LLM providers (no training on customer data)

## Current Release: April 2026
- Multi-Agent Harness (Agentforce Grid) — GA
- Session Trace Viewer v2 — GA
- Auto Agent Improvement (closed-loop feedback) — Beta
- Agentforce Voice enhancements — GA
- Eval Score v2 with benchmarking — Beta
