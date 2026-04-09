# Onboarding — Analytics / Data Science

Welcome! This guide supplements the [general onboarding](onboarding-general.md) with analytics-specific setup.

## Your Key Folders

| Folder | You Own | What to Do |
|--------|---------|-----------|
| `product-development/analytics/metrics/` | Yes | Define metrics by product area |
| `product-development/analytics/queries/` | Yes | Store SQL/SOQL queries |
| `product-development/analytics/schemas/` | Yes | Document table schemas |
| `product-development/analytics/dashboards/` | Yes | Link and describe dashboards |
| `product-development/analytics/experiments/` | Yes | Document A/B test results |
| `product-development/analytics/investigations/` | Yes | Write up data investigations |
| `product-development/analytics/playbooks/` | Yes | Create reusable analysis templates |
| `product-development/analytics/data-catalog.yaml` | Yes | Maintain the table registry |

## Key Principle

Split metrics, queries, and schemas so Claude loads only what's needed. When a PM asks "what is deflection rate?" Claude should read `metrics/` but NOT the 50-line SQL query.

## Contribution Workflow

1. When a new feature ships, add metric definitions, queries, and schemas
2. Document experiment results after each A/B test
3. Write investigation summaries for ad hoc analysis
4. Keep `data-catalog.yaml` current as new tables are created
