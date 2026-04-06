# Release Preparation Workflow

Prepare all materials for a release launch.

## Stages

```
status → release-notes → launch → demo-script
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
**Outputs:** `docs/Releases/[release-number]/release-notes.md`
**Transition:** "Release notes drafted. Ready for launch announcement?"

### 3. launch
**Skill:** `/launch [release-number]`
**Purpose:** Create internal/external launch announcement
**Outputs:** `docs/Releases/[release-number]/launch-announcement.md`
**Transition:** "Launch announcement ready. Want to create a demo script?"

### 4. demo-script
**Skill:** `/demo-script [release-number]`
**Purpose:** Build demo flow for the release
**Outputs:** `demos/[release-number]-demo.md`
**Transition:** "Release preparation complete! All materials ready."

## Artifact Naming

- All release artifacts go under `docs/Releases/[release-number]/`
- Demo scripts go to `demos/`

## Workflow-Specific Notes

- Reference `docs/Releases/INDEX.md` for feature documentation
- Check features by release in `CLAUDE.md` for release scope
- Consider cross-platform features that may need coordination
