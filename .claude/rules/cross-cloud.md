---
paths:
  - "docs/**"
  - "projects/**"
---

# Cross-Platform Dependencies

## Dependency Map

| Feature                     | Depends On                                      |
| --------------------------- | ----------------------------------------------- |
| Provider Onboarding         | Billing Module (account setup), Scheduling Module |
| Clinical Data Model         | Care Module (patient record harmonization)      |
| Mobile Provider Workflows   | Scheduling Module (mobile app, appointments)    |

## Abbreviations

- **Billing Module** - Billing and financial services
- **Scheduling Module** - Appointment and resource scheduling
- **Care Module** - Clinical care management
- **IT Module / Asset Module** - IT Service Management / Asset Management

## Cross-Team Dependency Review Process

Cross-Team Dependency Review approval is required for any feature that crosses module boundaries. Before committing to cross-platform features, confirm Cross-Team Dependency Review status with engineering.

## Rules

- **ALWAYS** consider cross-platform dependencies; they may need Cross-Team Dependency Review approval.
- **NEVER** ignore cross-platform impacts. If a feature touches another module's data model or API, flag the dependency and check Cross-Team Dependency Review status before proceeding.
