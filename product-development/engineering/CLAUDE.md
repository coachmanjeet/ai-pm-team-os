# Engineering

Engineering plans, RFCs, and bug investigations for Agentforce. All organized by product area.

**Owner:** Engineering Lead

## Folders

| Folder | What's Here |
|--------|-------------|
| `plans/` | Implementation plans for upcoming features |
| `rfcs/` | Technical design proposals and architecture decisions |
| `bug-investigations/` | Investigation write-ups for production bugs |

## Product Areas

All three folders share the same product-area structure:

| Product Area | Subfolder | Scope |
|-------------|-----------|-------|
| Builder | `builder/` | Agent Builder, Topics, Actions, Instructions |
| Eval & Testing | `eval/` | Evaluation, Test Cases, Eval Scores |
| Observability | `observability/` | Session Tracing, Dashboards, Anomaly Detection |
| Multi-Agent Grid | `grid/` | Supervisor, Worker Agents, Orchestration |
| Trust | `trust/` | Einstein Trust Layer, Guardrails |
| Auto Improvement | `improvement/` | Feedback Loop, Auto Suggestions |

## Naming Conventions

- **Plans:** `[feature-name].md`
- **RFCs:** `[feature-name]-rfc.md`
- **Bug investigations:** `[BUG-ID]-[description]/` folder with investigation write-up

See `bug-investigations/TEMPLATE.md` for the standard investigation format.
