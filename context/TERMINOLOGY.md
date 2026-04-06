---
owner: PM Team
last_updated: 2026-04-02
referenced_by: All agents, CLAUDE.md (Immutable Rules)
---

# Agentforce Terminology

## Core Agent Concepts

- **Agent** - An autonomous AI that can understand requests, reason over available data, take actions, and respond — without a human directing every step. Agents operate within defined Topics and use configured Actions.
- **Agent Topic** - A defined area of expertise that scopes what an agent handles. Topics contain instructions and a set of Actions. The Reasoning Engine routes each user message to the most relevant Topic.
- **Agent Action** - A discrete task an agent can execute. Actions are implemented as Salesforce Flows, Apex classes, prompt templates, or external API calls. Each Action has an input/output schema the agent uses when deciding to invoke it.
- **Agent Instructions** - Natural-language rules that define how an agent should behave: its tone, escalation criteria, what it should never say, and how it should handle edge cases. Set at the agent level and per-topic.
- **Atlas Reasoning Engine** - Agentforce's core AI layer. Interprets user intent, selects relevant Topics, chains Actions, manages multi-turn conversation memory, and decides when to escalate to a human. The "brain" of every agent.
- **Agentforce Script** - A hybrid execution model combining deterministic logic (guaranteed action sequences, conditionals) with LLM reasoning. Used when predictability and control are required alongside conversational flexibility.
- **Digital Labor** - The concept of AI agents performing autonomous, productive work alongside human employees. Agentforce's core value proposition: agents as a new layer of the workforce.

---

## Platform & Infrastructure Terms

- **Einstein Trust Layer** - Salesforce's enterprise AI safety and governance framework. Handles PII detection and masking, toxicity filtering, prompt injection defense, zero-retention enforcement with LLM providers, and full audit logging of every AI call.
- **Zero Retention** - Einstein Trust Layer policy ensuring that LLM providers (e.g., OpenAI, Anthropic, Google) do not store, log, or train on any Salesforce customer data passed through AI calls.
- **Grounding** - Connecting an agent to real data sources so its responses are accurate and contextual. Primary grounding mechanism is RAG (Retrieval-Augmented Generation) from Data Cloud and Knowledge Articles.
- **Data Cloud** - Salesforce's real-time customer data platform. Provides Unified Profiles (a single view of each customer from all data sources) and Vector Indexes (for semantic search / RAG grounding) that agents query at runtime.
- **Unified Profile** - Data Cloud's merged record of a customer combining data from CRM, web, mobile, and third-party sources. The richest available context for personalizing agent responses.
- **RAG (Retrieval-Augmented Generation)** - The technique of retrieving relevant data chunks from a vector index at query time and injecting them into the LLM context window. Enables agents to answer questions grounded in org-specific knowledge.
- **MCP (Model Context Protocol)** - An open standard for connecting AI models to external tools and data sources. Agentforce uses MCP to call external services (Jira, Confluence, SAP, custom APIs) as agent Actions without building custom connectors.
- **Named Credentials** - Salesforce's secure storage for external API credentials. Agent Actions that call external APIs reference Named Credentials rather than hardcoding secrets.

---

## Agentforce-Specific Terms

- **Agentforce Builder** - The low-code interface for creating and configuring agents. Admins define Topics, Actions, and Instructions via a guided UI. Developers extend with Apex and Flow.
- **Agent Testing Center** - The pre-deployment quality gate within Agent Builder. PMs and Eval Engineers write synthetic conversation test cases, run them against the agent, and review pass/fail results before publishing.
- **Session** - A single end-to-end conversation between a user and an agent, from first message to resolution or escalation. The atomic billing unit for Flex Credits.
- **Session Trace** - The detailed, step-by-step log of an agent's reasoning within a session. Shows: topic selected, actions called, data retrieved, LLM prompts/responses, decision branches, and latency per step. The primary debugging tool.
- **Session Trace Viewer** - The UI for inspecting Session Traces turn-by-turn. Used by Eval Engineers, Observability Engineers, and PMs investigating agent behavior.
- **Escalation / Agent Handoff** - The moment an agent transfers a conversation to a human agent. A well-executed handoff passes the full session transcript and context to the human so they don't ask the customer to repeat themselves.
- **Deflection** - When an agent resolves a customer issue without requiring human intervention. Deflection rate is the primary efficiency metric for customer service agents.
- **Flex Credits** - Agentforce's usage-based pricing unit. Each conversation consumes one credit at $0.10. Outcome-based pricing options exist for enterprise contracts.
- **AgentExchange** - Salesforce's marketplace for pre-built agent actions, topic templates, and full agent packages. Enables admins to install vetted capabilities without building from scratch.
- **Agentforce Grid** - The multi-agent orchestration layer. A Supervisor Agent breaks complex goals into sub-tasks and routes them to specialized Worker Agents, then synthesizes results.
- **Supervisor Agent** - In a multi-agent setup, the orchestrator. Receives a goal, decomposes it into sub-tasks, assigns them to Worker Agents, monitors progress, and synthesizes the final response.
- **Worker Agent** - In a multi-agent setup, a specialized agent that executes a single sub-task assigned by the Supervisor. Examples: a Research Agent, a CRM Lookup Agent, a Writing Agent.
- **Agentforce Voice** - The telephony-integrated version of Agentforce. Enables AI agents to handle phone calls with real-time speech-to-text and text-to-speech, grounded in the same CRM data as digital agents.

---

## Evaluation & Quality Terms

- **Eval Score** - Agentforce's composite quality score for an agent, calculated across multiple dimensions: accuracy, helpfulness, safety, and groundedness. Used to track agent quality over time.
- **Eval Dimension** - A specific quality axis assessed during evaluation. Standard dimensions: accuracy (did it get the right answer?), helpfulness (did it resolve the user's need?), safety (did it stay within guardrails?), groundedness (did it cite verifiable data?).
- **Test Case** - A synthetic conversation used to evaluate agent behavior. Includes an input conversation, the expected outcome, and the eval dimensions to score.
- **Regression Testing** - Running the full test suite after any agent configuration change to detect quality regressions before re-deploying.
- **Failure Mode** - A category of agent misbehavior. Common failure modes: hallucination (fabricated facts), topic miss (wrong topic selected), action failure (action returned error), over-escalation (escalated when it could have resolved), under-escalation (did not escalate when it should have).
- **Hallucination** - When an agent generates a response that sounds plausible but is factually incorrect and not grounded in retrieved data. A critical failure mode. Mitigated by strong grounding and instruction-level guardrails.
- **Guardrail** - An instruction or system-level constraint that prevents an agent from performing certain actions or producing certain outputs. Can be configured at the Einstein Trust Layer level (global) or Agent Instructions level (per agent).

---

## Observability & Operations Terms

- **Deflection Rate** - Percentage of agent sessions that resolved without human escalation. The headline ROI metric for customer service deployments.
- **Escalation Rate** - Percentage of agent sessions that transferred to a human. Inverse of deflection rate. High escalation rates signal topics or actions that need improvement.
- **CSAT (Customer Satisfaction Score)** - Post-session rating from the end user (typically 1-5 stars or thumbs up/down). Aggregated per agent, topic, and action. Primary human signal for auto-improvement.
- **Avg Handle Time (AHT)** - Average duration of an agent session. Lower AHT indicates the agent is efficient. Should be evaluated alongside CSAT (low AHT + low CSAT = bad; agent is fast but unhelpful).
- **First Contact Resolution (FCR)** - Whether the user's issue was resolved in a single session without follow-up. A quality metric for service deployments.
- **Auto-Improvement Loop** - The feedback cycle where low-scoring sessions (by CSAT or eval) are reviewed, root-caused, and used to update agent instructions, topics, or actions to prevent recurrence.
- **Observability Dashboard** - The aggregate metrics view for deployed agents. Shows deflection rate, escalation rate, CSAT, AHT, FCR, top failure modes, and trending topics over time.
- **Anomaly Detection** - System-generated alerts when an agent's behavior deviates from its baseline (e.g., sudden drop in deflection rate, spike in action failures, unusual topic distribution).

---

## Salesforce Platform Terms

- **Org** - A single Salesforce instance (customer environment). All Agentforce configurations, agents, sessions, and data are org-scoped.
- **Flow (Salesforce Flow)** - Salesforce's declarative automation builder. A primary Action type for Agentforce agents — enables agents to trigger complex, multi-step business processes without writing code.
- **Apex** - Salesforce's proprietary Java-like programming language. Used to implement complex agent Actions that require programmatic logic beyond Flow's capabilities.
- **Connected App** - Salesforce mechanism for external applications to authenticate via OAuth 2.0 and call Salesforce APIs, including the Agentforce Session API.
- **Permission Set** - Named collection of access rights in Salesforce. Controls which users can build agents, which agents users can interact with, and which Actions agents can invoke.
- **GUS** - Salesforce's internal engineering issue tracker (analogous to Jira). Used by the PM team to track features, bugs, and epics.
- **Release Train** - Salesforce's monthly release cadence for Agentforce. Features ship on a defined monthly schedule with GA, Beta, and Pilot gating.
