---
owner: PM Team
last_updated: 2026-04-02
referenced_by: ux-designer, csm, implementation-consultant, researcher
---

# Agentforce User Personas

---

## 1. Priya Nair - Salesforce Admin

**Role:** Salesforce Admin at a mid-market financial services company (600 employees). Manages Salesforce configuration, customization, and user enablement across Sales Cloud and Service Cloud. Recently became the internal "Agentforce owner" after her company bought Agentforce for Service.

**Experience:** 6 years as a Salesforce Admin. Salesforce Certified Administrator + Platform App Builder. No formal engineering background but comfortable with Flow, formula fields, and basic Apex reading.

**Primary Features Used:**
- Agentforce Builder (Topics, Actions, Instructions configuration)
- Agent Testing Center (pre-deployment testing)
- AgentExchange (discovering and installing pre-built actions)
- Permission Sets and deployment configuration

**Goals:**
- Deploy a customer service agent that deflects at least 40% of tier-1 cases within 3 months
- Build and maintain agents without filing IT tickets every time she needs a new action
- Demonstrate ROI to her VP so they expand Agentforce usage beyond service
- Keep agents compliant with company policies (no out-of-scope topics, no sensitive data leakage)

**Pain Points:**
- Testing agents before go-live feels like guesswork — she's not sure if the test cases she writes are comprehensive enough
- When an agent behaves unexpectedly in production, she has no way to understand why without engineering help reading Session Traces
- AgentExchange actions often need significant customization that requires Apex skills she doesn't have
- It's hard to explain to her VP why an agent gave a bad answer without a clear "why did it do that" view

**Jobs To Be Done:**
- Build and configure a working agent without writing code
- Verify agents behave correctly across the most important conversation scenarios before deploying
- Inspect a bad session quickly and understand what went wrong without needing a developer
- Onboard new action packages from AgentExchange and configure them for her org's systems

**Typical Workflow:**
Starts with reviewing flagged sessions from the prior day (escalations and low-CSAT sessions). Mid-morning: works on agent configuration in Agent Builder, updating instructions or adding a new action. Tests changes in Agent Testing Center. Afternoons: processes user requests for access changes, reviews AgentExchange for new action packages. Weekly: prepares a deflection rate summary for her manager.

---

## 2. Marcus Webb - Business User (Customer Service Manager)

**Role:** Customer Service Manager at a B2C retail company. Manages a team of 45 service reps across chat, email, and phone. His team handles 8,000+ contacts per month. Has been using Agentforce for Service for 6 months.

**Experience:** 10 years in customer service operations. No technical background. Deeply familiar with CSAT metrics, handle time, and agent productivity. Skeptical of AI tools that promise big outcomes but don't deliver.

**Primary Features Used:**
- Observability Dashboard (deflection rate, CSAT, escalation trends)
- Session supervision (spot-checking live and recorded agent sessions)
- Agent handoff quality (reviewing transcript context passed to reps)

**Goals:**
- Improve overall team CSAT from 3.8 to 4.2 by offloading simple contacts to the AI agent
- Reduce avg handle time for human reps by ensuring AI handles all tier-1 contacts
- Ensure handoffs from AI to human are smooth — reps should never ask customers to repeat themselves
- Build confidence in the AI agent so his team embraces it rather than resisting it

**Pain Points:**
- Cannot tell whether a low-CSAT score came from the AI agent's handling or the human rep who picked up the escalation
- When the agent gives a wrong answer, his reps see it and lose trust in the whole system
- Handoff quality is inconsistent — sometimes the agent passes rich context, sometimes reps get minimal information
- He can see aggregate metrics but not drill down into which topics are causing quality problems

**Jobs To Be Done:**
- Monitor AI agent performance in real-time and spot problems before they affect many customers
- Identify which contact types the agent handles well vs. poorly, and adjust agent scope accordingly
- Ensure handoffs include full conversation summary and recommended next actions for the rep
- Generate a weekly AI vs. human performance report to share with his VP

**Typical Workflow:**
Opens the Observability Dashboard first thing each morning. Reviews overnight escalation rate and any CSAT flags. Spot-checks 5-10 session transcripts daily to assess quality. Afternoon team standup: shares any agent behavior issues that reps flagged. Weekly: prepares performance report combining AI deflection data with human rep productivity metrics.

---

## 3. Sanjay Patel - Data Engineer

**Role:** Senior Data Engineer at a large healthcare company using Agentforce for employee support (HR and IT helpdesk agents). Owns the Data Cloud configuration, grounding pipelines, and integration architecture that agents depend on.

**Experience:** 9 years in data engineering. Expert in Salesforce Data Cloud, SQL, Python, and ETL pipelines. Works closely with the Agentforce Admin and the security team.

**Primary Features Used:**
- Data Cloud Unified Profile configuration
- Vector Index setup and maintenance (for RAG grounding)
- Named Credentials and MCP Server configuration
- Einstein Trust Layer policies (data masking rules, PII handling)

**Goals:**
- Ensure agents are grounded in accurate, up-to-date data — zero stale responses due to pipeline failures
- Maintain sub-500ms retrieval latency for all RAG queries so agents remain responsive
- Configure PII handling rules so sensitive employee data (SSN, salary, medical info) never appears in agent responses
- Build reusable data pipelines that can support new agents as the company expands Agentforce usage

**Pain Points:**
- Debugging retrieval quality is hard — when an agent gives a bad answer, it's unclear whether the issue is the Vector Index (wrong data retrieved), the LLM (wrong reasoning), or the instructions
- Vector Index refresh latency means agents sometimes answer based on data that is hours old; no clear signal when indexes are stale
- Different teams want different Data Cloud segments for different agents, creating governance complexity
- MCP server integrations have no standardized error handling, making failures hard to diagnose from the Salesforce side

**Jobs To Be Done:**
- Build and maintain Data Cloud pipelines that keep agent grounding data fresh and accurate
- Configure Vector Indexes optimized for the retrieval patterns each agent needs
- Set and enforce Einstein Trust Layer policies for PII masking appropriate to each agent's use case
- Debug grounding failures by correlating Session Trace data with Data Cloud query logs

**Typical Workflow:**
Morning: checks Data Cloud pipeline health and Vector Index refresh status. Reviews any Session Traces flagged for retrieval failures. Midday: works on new data pipeline builds or Vector Index optimization. Afternoon: cross-functional syncs with the Agentforce Admin on upcoming agent changes that affect data requirements. Weekly: reviews Einstein Trust Layer audit logs with the security team.

---

## 4. Leila Kim - Eval Engineer

**Role:** Quality Engineering Manager at Salesforce's internal CoE (Center of Excellence) team, supporting enterprise customers on Agentforce quality. Also the persona for customer-side Eval Engineers at large deployments.

**Experience:** 8 years in QA and ML evaluation. Background in NLP model testing. Familiar with LLM evaluation frameworks, red-teaming, and statistical significance testing. Writes Python scripts alongside clicking in UIs.

**Primary Features Used:**
- Agent Testing Center (test case creation, bulk test runs)
- Eval Score dashboard (accuracy, helpfulness, safety, groundedness)
- Session Trace Viewer (deep inspection of failing test cases)
- Regression testing (automated runs on agent config changes)
- Custom eval rubrics and benchmarking

**Goals:**
- Establish a test suite that catches regressions before any agent update reaches production
- Define eval rubrics that are meaningful to the business, not just technical metrics
- Create a "quality bar" that every agent must pass before deployment sign-off
- Build benchmarks so the team can compare agent quality across versions over time

**Pain Points:**
- Writing comprehensive test cases is slow — authoring natural language conversations at scale requires tooling or LLM assistance that doesn't yet exist in the product
- Eval Scores are useful but don't always correlate with real CSAT — she needs to close the loop between test scores and production signals
- When an agent passes all test cases but fails in production, the gap is usually about edge cases she didn't anticipate — needs better coverage tools
- Sharing eval results with non-technical stakeholders (PMs, business owners) requires manual translation of technical scores into business impact

**Jobs To Be Done:**
- Maintain a living test suite that evolves as the agent's scope and topics change
- Run automated regression tests on every agent update and get a pass/fail signal before deployment
- Drill into failing test cases at the session trace level to understand root cause
- Report agent quality to PMs and business stakeholders in terms they understand (business outcomes, not F1 scores)

**Typical Workflow:**
Starts each sprint by reviewing the test case backlog and identifying coverage gaps for new topics or actions. Runs the full test suite after any agent configuration change. For failures: opens Session Trace Viewer, identifies root cause (topic miss, action failure, hallucination, etc.), files a GUS ticket or updates agent instructions directly. Weekly: publishes an Eval Score trend report for the PM and business owner.

---

## 5. David Okonkwo - Observability Engineer

**Role:** Site Reliability / Observability Engineer at a global manufacturing company. Responsible for monitoring all deployed Agentforce agents in production — performance, reliability, and anomaly detection.

**Experience:** 7 years in SRE and platform operations. Strong in monitoring (Splunk, Datadog, Grafana), incident response, and distributed systems. New to AI-specific observability patterns.

**Primary Features Used:**
- Observability Dashboard (aggregate health metrics)
- Session Trace Viewer (incident investigation)
- Anomaly Detection alerts
- Action failure monitoring
- Einstein Trust Layer audit logs

**Goals:**
- Maintain 99.5%+ agent availability and sub-2-second response times across all deployments
- Detect agent performance degradations within minutes, not hours
- Build runbooks for common failure modes so on-call engineers can resolve issues without escalating to the AI team
- Establish SLOs for agent quality (CSAT, deflection, latency) and alert on SLO breaches

**Pain Points:**
- AI agent "failures" are qualitative (bad answer), not just binary (error/no error) — traditional monitoring tools don't cover this well
- Action failures are logged but correlating them to downstream impact on CSAT requires joining data across multiple systems
- When an LLM provider has degraded performance (higher latency, lower quality), it's invisible until customers complain
- No native integration between Agentforce observability data and his existing Datadog dashboards

**Jobs To Be Done:**
- Monitor agent health in real-time with alerts on latency, error rate, and quality metric degradation
- Investigate incidents by tracing a reported bad session through the full execution path (session trace to action logs to data retrieval)
- Export Agentforce metrics to existing observability infrastructure (Datadog/Splunk)
- Build and maintain SLO dashboards for each deployed agent to track reliability over time

**Typical Workflow:**
Morning: checks overnight alert queue for anomalies or SLO breaches. Reviews Observability Dashboard for each deployed agent. Midday: responds to any active incidents (traces through Session Trace Viewer, identifies root cause, escalates or resolves). Afternoon: works on observability improvements — new alert thresholds, runbook updates, or tooling integrations. On-call rotation: one week per month, 24/7 incident response.

---

## 6. Anita Sharma - VP of CX / Leadership Stakeholder

**Role:** VP of Customer Experience at a mid-market insurance company. Sponsors the Agentforce for Service deployment. Reports to the COO. Owns the CX P&L including headcount costs, CSAT targets, and digital channel metrics.

**Experience:** 15 years in CX leadership. MBA from Kellogg. Data-literate but not technical. Makes decisions based on business outcomes, not product features. Evaluates Agentforce against headcount ROI and competitive benchmarking.

**Primary Features Used:**
- Executive-level deflection and CSAT summaries (via reports/dashboards built by her team)
- Escalation rate trends (reads in weekly ops review)
- Cost-per-contact comparisons (AI vs. human)

**Goals:**
- Achieve 50% deflection of digital contacts within 12 months, reducing tier-1 headcount growth
- Maintain or improve CSAT scores as AI handles more volume (prove quality isn't sacrificed)
- Demonstrate to the CFO that Agentforce ROI justifies expansion to Sales and HR use cases
- Keep her team confident that AI is augmenting their work, not replacing them without a plan

**Pain Points:**
- Hard to translate technical AI metrics (eval scores, trace data) into the business language her board expects
- Concerned about brand risk from agent errors — one viral bad interaction could undo months of goodwill
- Doesn't have a clear framework for deciding when to expand agent scope vs. pull back
- Monthly ROI reporting is manual and inconsistent across departments

**Jobs To Be Done:**
- Receive a weekly executive summary: deflection rate, CSAT, cost-per-contact, notable incidents
- Understand business impact of agent quality issues without needing to read session traces herself
- Make go/no-go decisions on expanding agent scope based on performance thresholds, not gut feel
- Communicate AI strategy and outcomes to the CFO and board with credible data

**Typical Workflow:**
Reads the Monday morning CX ops summary (prepared by her team). Attends the weekly AI steering committee review. Monthly: reviews Agentforce ROI report with the CFO. Quarterly: presents AI CX strategy to the board, including roadmap, outcome data, and competitive benchmarking.
