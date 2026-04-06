---
owner: PM Team
last_updated: 2026-04-02
referenced_by: CLAUDE.md (Smart Suggestions)
---

# Agentforce Capabilities Map

This file maps Agentforce product capabilities by area, showing current maturity and planned additions. PM focus areas are bolded.

---

## Agentforce Builder

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Topic Builder | GA | Winter '25 | Define agent topics with natural language instructions and scoped action sets |
| Action Builder | GA | Winter '25 | Configure Flow, Apex, API, and Prompt Template actions for agent use |
| Agent Instructions | GA | Winter '25 | Natural-language rules governing agent tone, scope, escalation criteria, and guardrails |
| Agent Testing Center | GA | Spring '25 | Pre-deployment test suite: write conversation test cases, run against agent, review pass/fail |
| AgentExchange Integration | GA | Spring '25 | Discover and install pre-built action packages and agent templates from AgentExchange |
| Inline Action Creation | GA | Summer '25 | Create and edit Flow/Apex actions directly from within Agent Builder without switching contexts |
| **Auto Test Case Generation** | Beta | Apr '26 | LLM-assisted generation of test cases from topic descriptions to improve eval coverage |
| Multi-Language Agent Config | GA | Summer '25 | Configure agents in multiple languages with locale-aware instructions |
| Agent Versioning | Beta | Apr '26 | Draft/published version control for agent configurations with rollback capability |
| Collaborative Builder | Planned | May '26 | Multi-user editing and review workflows for agent configuration changes |

---

## Atlas Reasoning Engine

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Multi-Turn Conversation Memory | GA | Winter '25 | Maintains context across turns within a session; references prior messages in reasoning |
| Topic Classification | GA | Winter '25 | Routes each user message to the most relevant configured topic |
| Action Chaining | GA | Winter '25 | Sequentially invokes multiple actions in a single reasoning step to fulfill complex requests |
| **Agentforce Script (Hybrid Reasoning)** | GA | Spring '25 | Deterministic + LLM hybrid execution paths for predictable, auditable workflows |
| Ambiguity Resolution | GA | Spring '25 | Agent asks clarifying questions when user intent is ambiguous rather than guessing |
| Graceful Degradation | GA | Summer '25 | Agent handles action failures without crashing the session; falls back to alternatives or escalates |
| Long-Context Reasoning | Beta | Apr '26 | Extended context window support for sessions involving large documents or complex CRM records |
| Reasoning Explanations | Planned | Jun '26 | Human-readable explanations of why the agent took a specific action path (for Admin/Eval review) |

---

## Evaluation & Testing

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Agent Testing Center | GA | Spring '25 | Conversation-level test suite with pass/fail scoring against expected outcomes |
| Eval Score v1 (Accuracy, Helpfulness, Safety) | GA | Summer '25 | Multi-dimensional quality score for test run results |
| **Regression Testing (Auto-run on Config Change)** | GA | Fall '25 | Automatically runs full test suite when agent configuration is saved; blocks deploy on failures |
| **Eval Score v2 (+ Groundedness, Benchmarking)** | Beta | Apr '26 | Adds groundedness dimension (did the answer come from retrieved data?) and version-over-version benchmarking |
| Bulk Test Import (CSV/YAML) | GA | Fall '25 | Import test cases in bulk from CSV or YAML for teams managing large test suites |
| **Auto Test Case Generation** | Beta | Apr '26 | LLM generates candidate test cases from topic scope; human reviews before adding to suite |
| A/B Eval (Compare Two Agent Versions) | Planned | Jun '26 | Side-by-side eval score comparison between current and candidate agent versions |
| Red Team Mode | Planned | Jul '26 | Adversarial test case library: jailbreak attempts, PII probes, out-of-scope topic attacks |
| Eval API | Planned | Jun '26 | Programmatic access to run eval suites and retrieve scores (for CI/CD pipeline integration) |

---

## Session Tracing & Observability

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Session Trace Viewer v1 | GA | Spring '25 | Turn-by-turn log of agent reasoning, actions called, and data retrieved |
| **Session Trace Viewer v2** | GA | Apr '26 | Enhanced UI with collapsible reasoning steps, action input/output inspection, and latency waterfall |
| Observability Dashboard | GA | Summer '25 | Aggregate metrics: deflection rate, escalation rate, CSAT, avg handle time, top failure modes |
| Action Failure Monitoring | GA | Summer '25 | Real-time alerts on action error rates with failure categorization (timeout, auth, data error) |
| **Anomaly Detection** | Beta | Apr '26 | Automated detection of behavioral changes: topic distribution shifts, CSAT drops, escalation spikes |
| Session Search & Filter | GA | Fall '25 | Search sessions by outcome, topic, channel, date range, or custom tags |
| Export to External Monitoring | Beta | Apr '26 | Export session metrics and trace data to Splunk, Datadog, or custom HTTPS endpoints |
| Live Session Supervision | GA | Fall '25 | Supervisors can watch active agent sessions in real-time and intervene if needed |
| SLO Dashboard | Planned | Jun '26 | Define and track agent-level SLOs (deflection rate, CSAT, latency) with breach alerting |
| Conversation Replay | Planned | Jul '26 | Re-run a historical session through the current agent config to see how it would be handled today |

---

## Multi-Agent Harness (Agentforce Grid)

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| **Agentforce Grid (Multi-Agent Orchestration)** | GA | Apr '26 | Supervisor Agent decomposes goals and routes sub-tasks to Worker Agents, then synthesizes results |
| **Supervisor Agent Builder** | GA | Apr '26 | Low-code configuration of Supervisor Agent: goal decomposition rules, worker routing logic, synthesis instructions |
| Worker Agent Registration | GA | Apr '26 | Register any Agentforce agent as a Worker in a Grid deployment |
| Cross-Agent Context Passing | GA | Apr '26 | Supervisor passes relevant context to Worker Agents; Workers return structured results to Supervisor |
| Partial Failure Handling | Beta | Apr '26 | Grid continues and reports partial results if one Worker Agent fails, rather than failing the whole task |
| External Agent Interop (MCP) | Beta | Apr '26 | Grid can route sub-tasks to external agents reachable via MCP protocol |
| Grid Trace Viewer | GA | Apr '26 | Session Trace extended to show multi-agent execution graph: which workers were called, in what order, with what results |
| Parallel Worker Execution | Planned | Jun '26 | Supervisor dispatches independent sub-tasks to multiple Workers simultaneously to reduce latency |
| Grid Eval Framework | Planned | Jul '26 | Eval tooling specifically for multi-agent workflows: test cases covering full goal-decomposition-synthesis chains |

---

## Agent Supervision & Observability (Operational)

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Live Session Monitor | GA | Fall '25 | Real-time view of all active agent sessions with status, topic, and duration |
| Supervisor Intervention | GA | Fall '25 | Supervisor can inject a message into a live session or take over from the agent |
| Session Flagging & Tagging | GA | Fall '25 | Flag sessions for review, tag with categories (complaint, escalation, quality issue) |
| Escalation Queue | GA | Spring '25 | Unified queue for sessions escalated from agents to human reps, with full transcript handoff |
| **Handoff Context Panel** | GA | Apr '26 | Human rep receives structured context panel: session summary, customer intent, agent actions taken, recommended next step |
| Escalation Reason Classification | Beta | Apr '26 | Automated categorization of why each escalation occurred (agent couldn't answer, customer requested human, etc.) |
| Supervisor Reports | GA | Summer '25 | Daily/weekly summaries of escalation patterns, flagged sessions, and agent performance by topic |

---

## Auto Agent Improvement & Feedback

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| CSAT Collection | GA | Spring '25 | Post-session customer satisfaction rating (1-5 stars or thumbs) fed into agent analytics |
| Supervisor Feedback Tagging | GA | Summer '25 | Supervisors tag sessions with quality labels (good / needs improvement / critical) |
| **Improve Tab in Agent Builder** | Beta | Apr '26 | Surfaces low-scoring sessions grouped by failure mode with suggested instruction or topic changes |
| **Auto Instruction Suggestions** | Beta | Apr '26 | LLM analyzes low-CSAT and escalated sessions to suggest specific instruction rewrites |
| Feedback Signal API | Beta | Apr '26 | Programmatic submission of quality signals from external systems (CRM outcomes, downstream events) |
| Closed-Loop Improvement Tracking | Planned | Jun '26 | Track whether instruction changes made in response to failure modes actually reduced that failure mode in subsequent sessions |
| Fine-Tuning Feedback Export | Planned | Q3 '26 | Export curated session data for model fine-tuning workflows (for orgs with fine-tuning entitlements) |

---

## Einstein Trust Layer

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| PII Detection & Masking | GA | Winter '25 | Detects and masks PII in inputs before LLM calls; restores in outputs with original values |
| Zero-Retention Enforcement | GA | Winter '25 | Contractual and technical enforcement that LLM providers do not log or train on Salesforce data |
| Toxicity Filtering | GA | Winter '25 | Blocks harmful, offensive, or unsafe content in both inputs and outputs |
| Prompt Injection Defense | GA | Spring '25 | Detects and neutralizes attempts to override agent instructions via user input |
| Audit Log | GA | Winter '25 | Immutable record of every LLM call: timestamp, masked input hash, model used, output hash, latency |
| Custom Masking Rules | GA | Summer '25 | Admins define additional entity types to mask beyond standard PII (e.g., account numbers, internal codes) |
| Trust Layer Compliance Report | GA | Fall '25 | Exportable compliance report of all AI calls within a date range for audit purposes |
| Grounding Source Citation | Beta | Apr '26 | Agent includes citation of which Data Cloud record or Knowledge Article grounded each claim in its response |
| Cross-Org Trust Policy Templates | Planned | Jun '26 | Pre-built trust policy templates for regulated industries (HIPAA, GDPR, FINRA) |

---

## Channels & Surfaces

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Embedded Messaging (Web/Mobile) | GA | Winter '25 | Agent deployed in Salesforce Messaging for Web and Messaging for In-App |
| **Agentforce Voice** | GA | Apr '26 | Telephony-integrated voice agents with real-time STT/TTS, grounded in CRM data |
| Slack Integration | GA | Spring '25 | Deploy agents inside Slack channels and DMs for employee use cases |
| Email Channel | GA | Summer '25 | Agents handle inbound email, draft responses, or autonomously resolve if within scope |
| CRM Record Context (In-App) | GA | Spring '25 | Agents embedded in Salesforce record pages with full access to the current record as context |
| External API (Headless) | GA | Spring '25 | Session API for embedding Agentforce agents in external apps, websites, or custom surfaces |
| WhatsApp / SMS | Beta | Apr '26 | Agent deployment via WhatsApp Business and SMS channels through Salesforce Messaging |
| Portal / Community | Planned | Jun '26 | Agent deployment in Experience Cloud portals for self-service customer or partner use cases |

---

## Platform & Integrations

| Capability | Status | Release | Description |
|-----------|--------|---------|-------------|
| Salesforce Flow Actions | GA | Winter '25 | Invoke any Salesforce Flow as an agent action — full access to Flow's automation capabilities |
| Apex Class Actions | GA | Winter '25 | Invoke custom Apex for complex programmatic logic as agent actions |
| External REST API Actions | GA | Spring '25 | Call any REST API as an agent action using Named Credentials for secure auth |
| Prompt Template Actions | GA | Spring '25 | Use Einstein Prompt Templates as agent actions for consistent, governed LLM sub-calls |
| **MCP Server Integration** | GA | Apr '26 | Connect agents to external tools (Jira, Confluence, SAP, custom) via MCP protocol |
| Data Cloud RAG Grounding | GA | Summer '25 | Retrieval-Augmented Generation from Data Cloud Vector Indexes at agent query time |
| AgentExchange | GA | Fall '25 | Marketplace for installing pre-built actions, topic packs, and full agent templates |
| Knowledge Base Grounding | GA | Winter '25 | Ground agent responses in Salesforce Knowledge Articles |
| Custom Vector Index | GA | Summer '25 | Admins build custom Data Cloud Vector Indexes from any data source for specialized grounding |
| OAuth 2.0 Session API | GA | Spring '25 | External app authentication for Agentforce session initiation |
| SAML SSO (Admin Access) | GA | Winter '25 | SSO for Agentforce Builder and Observability access using Salesforce Identity |

---

## Maturity Legend

| Status | Meaning |
|--------|---------|
| **GA** | Generally Available. Production-ready, fully supported, covered by Salesforce SLA and Trust. |
| **Beta** | Available for early access customers / pilot orgs. Functional but subject to change. Not covered by standard SLA. |
| **Planned** | On the roadmap for the specified release. Subject to change based on prioritization. |

---

## Quick Reference by Release

### April 2026 (Current)
**Theme:** Multi-Agent & Quality Intelligence

GA:
- Agentforce Grid (Multi-Agent Orchestration)
- Grid Trace Viewer
- Session Trace Viewer v2
- Agentforce Voice (enhanced)
- Handoff Context Panel
- MCP Server Integration
- Supervisor Agent Builder

Beta:
- Eval Score v2 (Groundedness + Benchmarking)
- Auto Test Case Generation
- Agent Versioning
- Improve Tab in Agent Builder (Auto Instruction Suggestions)
- Anomaly Detection
- Grounding Source Citation
- Partial Failure Handling (Grid)
- External Agent Interop (MCP in Grid)
- Export to External Monitoring
- Escalation Reason Classification
- Feedback Signal API
- WhatsApp / SMS Channel

### May–June 2026 (Next)
**Theme:** Developer Velocity & Enterprise Governance

Planned:
- Collaborative Builder
- A/B Eval (Compare Agent Versions)
- Eval API (CI/CD integration)
- Parallel Worker Execution (Grid)
- SLO Dashboard
- Closed-Loop Improvement Tracking
- Reasoning Explanations
- Cross-Org Trust Policy Templates (HIPAA, GDPR, FINRA)
- Portal / Community Channel
- Fine-Tuning Feedback Export

### Q3 2026 (Future)
**Theme:** Autonomy at Scale

Planned:
- Red Team Mode (adversarial eval)
- Grid Eval Framework (multi-agent test cases)
- Conversation Replay
- Fine-Tuning Feedback Export (GA)
- Long-Context Reasoning (GA)
