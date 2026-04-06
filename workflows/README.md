# Workflows & Hooks Quick Reference

Guided multi-step workflows and automated behaviors for PMOS.

---

## Directory Structure

```
workflows/
├── active.md           # Current workflow state (auto-updated)
├── hooks.md            # Hooks configuration
├── README.md           # This file
└── definitions/
    ├── feature-development.md
    └── release-preparation.md
```

---

## Workflows

### Starting a Workflow

```
/workflow feature [topic]     # Feature development
/workflow release [number]    # Release preparation
```

### Managing Workflows

```
/workflow resume              # Resume active workflow
/workflow status              # Show current progress
/workflow pause               # Save and exit
```

### Predefined Workflows

| Workflow | Stages |
|----------|--------|
| **Feature Development** | Research → PRD → Review → QA → User Stories |
| **Release Preparation** | Status → Release Notes → Launch → Demo Script |

### Ad-hoc Chaining

```
/chain research → competitive-analysis → strategy [topic]
/chain prd → edge-cases → qa [topic]
```

Save custom chains: Say "save as workflow [name]" after running a chain.

### Flexibility During Workflows

| Say This | Does This |
|----------|-----------|
| "skip" / "later" | Skip current stage |
| "go back to [stage]" | Return to previous stage |
| "add [skill] before [stage]" | Insert a step |
| "pause" | Save state, exit workflow |
| "where are we?" | Show status |

### Auto-Detection

Claude recognizes workflow intent:
- "I need to build a feature for X" - Offers feature-development
- "Prepare for release 4.2" - Offers release-preparation

---

## Hooks

### Notification Markers

```
🔔 **Input needed:** Decisions/choices required
⏳ **Waiting:** Background tasks running
✅ **Complete:** Finished work
📋 **Pending:** Items needing attention
```

### macOS System Notifications

Fires when:
- Background task completes
- Input needed (after 30s wait)
- Pending items at session end

### Quality Gates

| Gate | Trigger | Behavior |
|------|---------|----------|
| PRD Edge Cases | "finalize PRD" | Offers to run `/edge-cases` first |

Mode: Advisory (shows results, user decides)

### Session Summary

At conversation end (if substantive work done):
```
📋 **Session Summary**
- Created: [artifacts]
- Pending: [items needing attention]
- Workflow: [status if active]
```

### Configuration

Edit `workflows/hooks.md` to enable/disable hooks and gates.

---

## Workflow State Format

The file `workflows/active.md` tracks the current workflow state. When a workflow is active, it follows this format:

```markdown
---
workflow_type: feature | release
topic: [Feature or topic name]
started: YYYY-MM-DD
stage: [Current stage name]
last_updated: YYYY-MM-DD
stages_completed:
  - [Stage 1 name]
  - [Stage 2 name]
context: |
  [Brief context about current progress and key decisions made so far]
---

# Active Workflow: [Type] - [Topic]

## Current Stage: [Stage Name]

[Details about what is being worked on in this stage]

## Completed Stages

### [Stage 1]
- [Key output or artifact]
- [Decision made]

### [Stage 2]
- [Key output or artifact]
```

When no workflow is active:
```markdown
# Active Workflow

No active workflow. Start one with `/workflow [type] [topic]`.
```

---

## Pausing and Resuming

When pausing a workflow (`/workflow pause` or "pause"):
1. Current stage progress is saved to `active.md`
2. Any pending artifacts are noted in the context field
3. Next session can resume with `/workflow resume`

When resuming (`/workflow resume`):
1. Claude reads `active.md` and restores context
2. Notifies the PM of current stage and progress
3. Continues from where work was paused

---

## Files

| File | Purpose |
|------|---------|
| `workflows/definitions/*.md` | Workflow stage definitions |
| `workflows/active.md` | Current workflow state |
| `workflows/hooks.md` | Hooks configuration |
| `.claude/settings.local.json` | Hook implementations (gitignored) |
