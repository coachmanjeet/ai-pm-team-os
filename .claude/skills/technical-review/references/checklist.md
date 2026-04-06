# Technical Review Checklist

## Functional Requirements
- [ ] Requirements are clear and testable
- [ ] User stories have acceptance criteria
- [ ] Edge cases are identified
- [ ] Error handling is defined

## Data Model
- [ ] Objects and fields are appropriate
- [ ] Relationships are correctly defined
- [ ] No data redundancy
- [ ] Naming follows standards

## Architecture
- [ ] Fits existing architecture patterns
- [ ] Scalability considered
- [ ] Performance requirements defined
- [ ] Integration points identified

## Security
- [ ] Permissions model defined
- [ ] Data access controls appropriate
- [ ] Sensitive data handling addressed
- [ ] Audit requirements met

## Cross-Platform
- [ ] Cross-platform impacts identified
- [ ] Cross-Team Dependency Review requirements documented
- [ ] Dependencies mapped
- [ ] Alignment confirmed

## Platform Considerations
- [ ] Platform limits considered
- [ ] Bulk operations supported
- [ ] Async processing where appropriate
- [ ] API limits considered

## Review Output Template

```markdown
### Data Model Review
| Object | Change Type | Assessment |
|--------|-------------|------------|

### Architecture Review
| Component | Purpose | Concerns | Recommendation |

### Performance Review
| Metric | Requirement | Assessment |
Platform Limit Analysis:
| Limit | Expected Usage | Headroom | Risk |

### Security Review
| Permission | Users | Assessment |

### Cross-Platform Review
| Cloud | Impact | Cross-Team Dependency Review Required | Status |
```
