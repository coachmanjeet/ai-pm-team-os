---
globs:
  - "product-development/product/launches/**"
  - "product-development/product/release-notes/**"
---

# Launch Readiness — Repo Update Rule

**Before generating launch materials or marking a feature as launched, verify the repository is current.**

## Repo Update Checklist

1. **Capabilities:** Does `context/CAPABILITIES.md` reflect the new feature and its status (GA/Beta)?
2. **Product:** Does `context/PRODUCT.md` need updates if this feature changes the product overview or editions?
3. **Terminology:** Are any new terms added to `context/TERMINOLOGY.md`?
4. **Competitive:** Does `product-development/product/competitive-research/` need updates based on how this feature changes competitive positioning?
5. **Decisions:** Are key decisions from development captured in `tracker/decisions.md`?
6. **Customer context:** Are relevant customer calls and feedback stored in `product-development/product/customers/`?
7. **Analytics:** Are metrics definitions, queries, and dashboards documented in `product-development/analytics/`?
8. **Feature index:** Is `product-development/feature-index.yaml` updated with all artifacts for this feature?

## Rule

- ALWAYS run through this checklist before generating `/launch` or `/release-notes` output
- If any item is outdated, flag it to the PM and offer to update before proceeding
- The feature is not fully launched until the repo reflects it
