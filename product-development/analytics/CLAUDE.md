# Analytics — Metrics, Queries, Schemas & Dashboards

Data analysis resources organized by product area for efficient context loading. Split by type so Claude reads only what's needed.

**Owner:** Data Scientist / Analytics Lead

## Contents

| Folder/File | Description |
|-------------|-------------|
| `metrics/` | Metric definitions organized by product area |
| `queries/` | SQL/SOQL queries organized by product area |
| `schemas/` | Table/object schemas organized by product area |
| `dashboards/` | Dashboard links and docs organized by product area |
| `experiments/` | A/B test results organized by product area |
| `investigations/` | Ad hoc data investigations organized by product area |
| `playbooks/` | Reusable analysis playbooks (e.g., funnel-analysis.md) |
| `data-catalog.yaml` | Data table registry — descriptions, owners, refresh cadence |

## Organization

Organize by product area. Skills create subdirectories on demand — no need to pre-create them.

## Context Management

- Asked about a metric definition → read `metrics/` only
- Asked to run a query → read `queries/` + `schemas/`
- Don't load all three unless specifically needed
