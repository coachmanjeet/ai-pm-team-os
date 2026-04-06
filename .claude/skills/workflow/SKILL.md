---
name: workflow
description: Manage guided multi-stage workflows for Agentforce. Use when starting feature development or release preparation workflows. Supports start, resume, status, and pause operations with state tracking in workflows/active.md.
---

# Workflow

Manage workflow: $ARGUMENTS

## Usage

```
/workflow feature [topic]     — Research → PRD → Review → QA → User Stories
/workflow release [number]    — Status → Release Notes → Launch → Demo Script
/workflow resume              — Resume active workflow
/workflow status              — Show progress
/workflow pause               — Save and exit
```

## Starting a Workflow

1. **Parse** — Extract type and topic
2. **Check active** — Read `workflows/active.md`; if active, ask: Start new | Resume | Cancel
3. **Load definition** — Read from `workflows/definitions/[type].md`
4. **Initialize state** in `workflows/active.md`:
   ```markdown
   # Active Workflow
   **Type:** [type] | **Topic:** [topic] | **Started:** [date]
   **Current Stage:** [first stage]
   ## Progress
   - [ ] [stage1] - Not started
   ## Artifacts
   (none yet)
   ```
5. **Start first stage** — Execute with topic

## Stage Transitions

After each stage completes:
```
[Stage] complete — saved to [path]
[Brief summary]
Ready for [next stage]? Or:
- Explore [aspect] deeper
- Skip to [later stage]
- Add [optional step] first
```

## Flexibility Commands

| User Says | Action |
|-----------|--------|
| skip / later | Mark skipped, move to next |
| go back to [stage] | Return to stage |
| pause | Save state, exit |
| where are we? | Show status |

## Auto-Detection

When user intent suggests workflow without explicit command:
- "build a feature" → suggest feature workflow
- "prepare for release" → suggest release workflow
