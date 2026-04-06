# Memory System

Store curated learnings across sessions. Three categories:

| Category | Purpose | Example |
|----------|---------|---------|
| **Decisions** | Strategic and product decisions with rationale | "Chose session-level feedback over message-level because..." |
| **Preferences** | Working style, stakeholder, and process preferences | "Engineering prefers specs with data model diagrams" |
| **Domain Knowledge** | Technical insights and product knowledge | "Atlas reasoning engine uses chain-of-thought internally" |

## Files

- `decisions.md` — Decision patterns and rationale
- `preferences.md` — Style, stakeholder, and process preferences
- `domain-knowledge.md` — Technical insights
- `pending.md` — Auto-suggested learnings awaiting review

## How It Works

- At session end, Claude scans for decisions, preferences, and domain insights
- High-value learnings are proposed for storage
- Use `/tracker` to log decisions formally
