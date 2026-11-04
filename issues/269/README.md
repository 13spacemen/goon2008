# Issue 269: Provide player rate limiting

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-08-17 00:54 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/269 |

## Comments

### Comment 0: commenter 24, 2008-08-17 00:54 UTC

```
All player input (including clicks) should be rate-limited to avoid jamming
up the engine for minutes at a time from an autoclicker or similar
flood-type input
```

### Comment 1: commenter 24, 2008-08-23 19:33 UTC

```
Comment deleted
```

- Attachment functionality patch v1.patch, 1,505 bytes: **not recovered**

### Comment 2: commenter 24, 2008-08-23 19:40 UTC

```
Relevant Changes (commited in revision 554)
- added configurable rate_limit variable in config
- added RateLimit function (returns 1 if usr is spamming)
```

- Attachment [functionality patch v1.patch](attachments/269_-2989703054008607087_functionality%20patch%20v1.patch), 2,368 bytes

### Comment 3: commenter 24, 2008-08-23 19:54 UTC

```
Neglected to include two other modified files:
- equipment.dm (replace with RateLimit(usr,2)
- ai/cameras.dm (replace with RateLimit(usr)
```

### Comment 4: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
