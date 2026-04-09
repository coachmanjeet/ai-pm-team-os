---
name: share-update
description: Create a PR for document changes and notify the team via Slack. Use after creating or updating PRDs, specs, plans, customer call summaries, or any team document. Reduces friction for sharing work.
---

# Share Update

Share recent work with the team: $ARGUMENTS

## Process

### 1. Identify Changes

- Run `git status` and `git diff` to identify changed/new files
- Summarize what was created or modified

### 2. Prepare Commit

- Stage relevant files (not .env or credentials)
- Create a descriptive commit message summarizing the artifact(s)

### 3. Create Pull Request

- Create a new branch if on main: `[pm-name]/[artifact-type]-[topic]`
- Push and create PR using `gh pr create`
- PR title: short description of what was created/updated
- PR body: summary of changes, context, and who should review

### 4. Notify Team via Slack

Read `pmos.config.yml` for team channels and member Slack IDs. Post a structured message:

```
**[PM Name]** shared an update:
**What:** [Brief description of artifact(s)]
**PR:** [PR link]
**Reviewer:** @[reviewer slack_id]
**Context:** [1-2 sentences on why this matters]
```

Choose the right channel from `pmos.config.yml → team.channels`:
- PRDs, specs, feature plans → `team` channel
- Release notes, launch → `releases` channel
- Bug reports → `engineering` channel
- Customer call summaries → `customer_feedback` channel

### 5. Confirm

Report: PR created, Slack notification sent, and link to the PR.

## Routing Rules

| Artifact Type | Channel | Default Reviewer |
|--------------|---------|-----------------|
| PRD / Spec | team | Engineering Lead |
| Customer Call | customer_feedback | PM Lead |
| Bug Report | engineering | Engineering Lead |
| Release Notes / Launch | releases | PM Lead |
| Strategy | team | Product Strategist |
| Plan | team | Relevant lead |

## Important

- Always create a PR — don't push directly to main
- Tag the right reviewer based on artifact type
- Keep Slack messages concise — link to the PR for details
- If `team.channels` is not configured in pmos.config.yml, ask the PM to run `/setup`
