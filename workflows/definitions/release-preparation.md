# Release Preparation Workflow

Prepare all materials for a release launch.

## Stages

```
status → release-notes → repo-update → launch → demo-script
```

## Stage Details

### 1. status
**Skill:** `/status-update [release-number]`
**Purpose:** Gather current state of all features in the release
**Outputs:** Summary of features, their status, and any blockers
**Transition:** "Status gathered. Ready to draft release notes?"

### 2. release-notes
**Skill:** `/release-notes [release-number]`
**Purpose:** Generate customer-facing release notes
**Outputs:** `product-development/product/release-notes/[release-number]-release-notes.md`
**Transition:** "Release notes drafted. Ready to verify repo is current?"

### 3. repo-update
**Skill:** (manual checklist — see `.claude/rules/launch-readiness.md`)
**Purpose:** Ensure all repo context files are current before launch
**Checklist:**
- `context/CAPABILITIES.md` reflects new features
- `context/PRODUCT.md` updated if needed
- `context/TERMINOLOGY.md` includes new terms
- `product-development/product/competitive-research/` updated if positioning changed
- `tracker/decisions.md` has key decisions
- `product-development/analytics/` has metric definitions
- `product-development/feature-index.yaml` updated
**Transition:** "Repo is current. Ready for launch announcement?"

### 4. launch
**Skill:** `/launch [release-number]`
**Purpose:** Create internal/external launch announcement
**Outputs:** `product-development/product/launches/[release-number]-launch.md`
**Transition:** "Launch announcement ready. Want to create a demo script?"

### 5. demo-script
**Skill:** `/demo-script [release-number]`
**Purpose:** Build demo flow for the release
**Outputs:** `demos/[release-number]-demo.md`
**Transition:** "Release preparation complete! All materials ready."

## Artifact Naming

- Release notes: `product-development/product/release-notes/`
- Launch announcements: `product-development/product/launches/`
- Demo scripts: `demos/`

## Workflow-Specific Notes

- Reference `product-development/feature-index.yaml` for feature-to-artifact mapping
- Check `context/CAPABILITIES.md` for release scope
- Consider cross-platform features that may need coordination
