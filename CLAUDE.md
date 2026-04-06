# Agentforce PM OS

## About This System

A lean, Claude Code-powered PM workspace for Agentforce product managers at Salesforce. This is NOT a code development project; it's a document-centric PM productivity system with 19 skills, 5 review agents, and Agentforce domain context pre-loaded.

---

## Session Behavior

**On session start:** Check `workflows/active.md` for active workflows. If found, briefly notify: "You have an active [type] workflow for '[topic]' at [stage]. Resume with `/workflow resume` or start fresh." If no active workflow exists, ask the PM: "What would you like to focus on today?"

**On response completion:** Check for:

1. **Learning detection** - Scan for decisions, preferences, or domain insights. Propose storing high-value learnings.
2. **Session summary** - If substantive work was done, summarize artifacts created, pending items, and workflow status.
3. **PRD quality gate** - When finalizing a PRD, offer to run `/edge-cases` first (advisory).

---

## Context Management

Context is the most important resource. Proactively use subagents (Task tool) to keep exploration, research, and verbose operations out of the main conversation.

**Delegate to subagents when reading IS the task:**
- Project file exploration (answering a question by reading 3+ files)
- Research tasks (web searches, doc lookups, investigating how something works)
- Multi-agent reviews and analysis (produces verbose output)
- Any investigation where only the summary matters

**Stay in main context when reading SUPPORTS a task:**
- Direct file edits the PM requested (even if they require reading context files)
- Planning conversations and back-and-forth
- Short, targeted reads (1-2 files)
- Tasks where the PM needs to see intermediate steps

**Rule of thumb:** Delegate when the output is a summary the PM consumes. Stay in main context when the PM is watching the work happen (edits, creation, conversation).

---

## Quick Start

**Before answering product questions:**

1. Check `context/TERMINOLOGY.md` for Agentforce and enterprise agentic AI terminology
2. Reference `context/ARCHITECTURE.md` for technical context
3. Use `docs/INDEX.md` to find feature documentation by release
4. Check `memory/pending.md` for unprocessed session learnings

**When generating any PM artifact:** Read relevant `context/` files, check `templates/` for matching formats, then generate.

**Document locations:**

- Feature docs: `docs/Releases/[release]/[feature]/`
- Templates: `templates/`
- Decisions: `tracker/decisions.md`
- Agent system: `.claude/AGENT_GUIDE.md`

---

## PM Profile

Configure your profile in `pmos.config.yml`. This includes your name, role, team, product focus areas, and release cadence.

---

## Immutable Rules

### ALWAYS

- Include acceptance criteria in user stories
- Reference user research when writing PRDs
- Consider cross-platform dependencies (may need Cross-Team Dependency Review)
- Use terminology from `context/TERMINOLOGY.md`
- Get multi-perspective feedback via agents before finalizing PRDs
- Track decisions in `tracker/decisions.md`
- Cite sources for external claims

### NEVER

- Write PRDs without understanding the user problem
- Skip acceptance criteria in user stories
- Ignore cross-platform impacts
- Commit to timelines without engineering input

Path-specific rules in `.claude/rules/` auto-load when working in `docs/`, `memory/`, or `templates/` directories.

---

## Tool & Loop Constraints

* **Cost Guardrail:** If a single task requires >3 retry attempts, **STOP** and ask the PM for clarification. This refers to retries of the same operation, not parallel subtasks in multi-agent reviews.
* **WebFetch:** Restricted to allowed domains in `settings.local.json`. If a new domain is needed, explain why and request approval.
* **Git Policy:** Do not modify workflow definitions without explicit confirmation from the PM.
