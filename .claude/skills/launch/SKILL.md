---
name: launch
description: Create launch announcements and communications for Agentforce features across internal and external audiences. Use when creating launch materials, internal announcements, customer-facing release communications, partner webinar announcements, Conference session content, or sales enablement briefs.
---

# Launch Announcement

Create launch materials for: $ARGUMENTS

## Frameworks

Apply April Dunford's competitive context framing, Arielle Jackson's launch sequencing principles, and Andy Raskin's strategic narrative structure.

## Repo Update Checklist (run BEFORE generating launch materials)

Verify and flag if outdated:
- [ ] `context/CAPABILITIES.md` reflects the feature and its status (GA/Beta)
- [ ] `context/PRODUCT.md` updated if feature changes product overview or editions
- [ ] `context/TERMINOLOGY.md` includes any new terms
- [ ] `context/COMPETITIVE.md` updated if competitive positioning changed
- [ ] `tracker/decisions.md` captures key decisions from development
- [ ] `product-development/product/customers/` has relevant customer feedback stored
- [ ] `product-development/analytics/` has metric definitions and dashboards documented

If any item is outdated, flag to the PM and offer to update before proceeding.

## Context Gathering

- Review PRD in `product-development/product/PRDs/`
- Check `context/PRODUCT.md` for positioning
- Check `context/PERSONAS.md` for audience
- Reference `context/WRITING-GUIDE.md` for voice and tone
- Ask: Feature name, release, GA date, target audience, key capabilities, how to enable

## Available Formats

| Format | Audience | When |
|--------|----------|------|
| Internal Announcement | Eng, PM, leadership | GA day |
| Customer Release Notes | End users, admins | GA day |
| Partner Webinar | SI partners | Pre/post GA |
| Conference/Event | Conference attendees | Event |
| Sales Enablement Brief | AEs, SEs | Pre-GA |

See [references/templates.md](references/templates.md) for full templates for each format.

## Key Elements per Format

**Internal:** What's launching, key capabilities, who it's for, how to enable, resources, team shoutouts
**Customer:** Overview, why it matters, key features, getting started, editions/permissions
**Partner Webinar:** Learning objectives, agenda, who should attend, presenters, registration
**Conference:** Session description, key takeaways, demo highlights, speakers
**Sales Brief:** Elevator pitch, target customer profile, key benefits with proof points, competitive differentiation, discovery questions, objection handling

## Writing Principles

- Lead with benefits, not features
- Use accessible language (avoid internal jargon)
- Be specific — include dates, steps, resources
- Acknowledge limitations — build trust through transparency

## Save Location

Save to `product-development/product/launches/[release]-[feature]-launch.md`
