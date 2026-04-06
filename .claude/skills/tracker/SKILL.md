---
name: tracker
description: Track ideas, bugs, tasks, and decisions in the PMOS tracker system. Use when logging ideas, bugs, tasks, or decisions. Supports create, list, and update operations with auto-generated IDs and structured entries.
---

# Tracker

Track items: $ARGUMENTS

## Usage

```
/tracker idea [description]     — Track a new idea
/tracker bug [description]      — Track a bug
/tracker task [description]     — Track a task
/tracker decision [description] — Record a decision
/tracker list [type]            — List tracked items
/tracker update [id] [status]   — Update item status
```

## Process

1. **Parse** — Extract type and description from arguments
2. **Generate ID** — Format: `[TYPE]-[YYMMDD]-[XXX]` (IDEA, BUG, TASK, DEC)
3. **Create Entry** — Add to appropriate `tracker/` file

## Tracker Files

| Type | File | Status Options |
|------|------|---------------|
| Ideas | `tracker/ideas.md` | New, Exploring, Approved, Rejected |
| Bugs | `tracker/bugs.md` | Open, In Progress, Fixed, Won't Fix |
| Tasks | `tracker/tasks.md` | To Do, In Progress, Done, Blocked |
| Decisions | `tracker/decisions.md` | Decided, Pending, Revisiting |

## Entry Format

```markdown
## [ID] [Title]
- **Status:** [Status]
- **Created:** YYYY-MM-DD
- **Priority:** High | Medium | Low

### Description
[Content]

### Notes
- [Context]
---
```

## List Command

- `/tracker list` — All items
- `/tracker list ideas` — All ideas
- `/tracker list bugs open` — Open bugs
- `/tracker list tasks inprogress` — In-progress tasks

## Update Command

- `/tracker update IDEA-250117-001 approved`
- `/tracker update BUG-250117-002 fixed`
