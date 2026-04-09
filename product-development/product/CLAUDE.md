# Agentforce Product

PM-owned artifacts for the Agentforce product. Each subfolder has its own CLAUDE.md.

## Folder Structure

```
product/
├── PRDs/                    — Product Requirements Documents by product area
├── specs/                   — Feature specifications by product area
├── user-stories/            — User stories by product area
├── customers/               — Account context, calls, feature requests
├── competitive-research/    — Competitor intel, feature comparisons, pricing
├── strategy/                — Roadmaps, vision, business context
├── launches/                — Launch announcements
├── release-notes/           — Customer-facing release notes
├── meetings/                — Meeting notes (sprint, standup, syncs)
└── processes/               — Operational processes and checklists
```

## Key Documents

| Purpose | Path |
|---------|------|
| Feature Lookup | `../feature-index.yaml` |
| PRDs | `PRDs/CLAUDE.md` |
| Customer Accounts | `customers/CLAUDE.md` |
| Competitive Research | `competitive-research/CLAUDE.md` |
| Strategy & Roadmaps | `strategy/CLAUDE.md` |
| Domain Knowledge | `../../context/` (terminology, architecture, personas, capabilities) |

## Product Areas

All subfolders organize content by these Agentforce product areas:

| Area | Subfolder | Scope |
|------|-----------|-------|
| Builder | `builder/` | Agent Builder, Topics, Actions, Instructions |
| Eval & Testing | `eval/` | Evaluation, Test Cases, Eval Scores |
| Observability | `observability/` | Session Tracing, Dashboards, Anomaly Detection |
| Multi-Agent Grid | `grid/` | Supervisor, Worker Agents, Orchestration |
| Trust | `trust/` | Einstein Trust Layer, Guardrails |
| Auto Improvement | `improvement/` | Feedback Loop, Auto Suggestions |
