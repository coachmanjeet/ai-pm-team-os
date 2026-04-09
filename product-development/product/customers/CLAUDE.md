# Customers — Account Context & Call History

Structured customer intelligence for cross-customer synthesis. Everyone on the team (PMs, strategy, account managers) contributes call summaries here.

**Structure:** Each customer gets a subfolder:
```
customers/[customer-name]/
  CLAUDE.md       — Key contacts, segment, account summary (read this first)
  calls/          — Structured call summaries (YYYY-MM-DD-topic.md)
  notes.md        — Ongoing account notes
```

**Usage:**
- For "who did I meet with recently?" → read each customer's `calls/` folder
- For "what are customers saying about X?" → search across all call summaries
- For a specific customer → read their CLAUDE.md first, then dive into calls if needed

**Contributing:** Use `/customer-call` skill to ensure consistent summary format across all contributors.

See `TEMPLATE-CUSTOMER.md` for setting up a new customer folder.
