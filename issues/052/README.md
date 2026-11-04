# Issue 52: allow observing people to examine things

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-24 01:20 UTC |
| Last comment | 2008-08-16 20:47 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/52 |

## Related SVN revisions

Commits whose log message cites this issue:

- r548, 2008-08-16, kelson, `e55b2de22` on `/branches/kelson/unstable`: Issue 52: Improved Observation mode

## Comments

### Comment 0: commenter 1, 2008-05-24 01:20 UTC

```
not being able to examine things while dead and observing makes it a bitch
to tell what's going on (since you can't tell what people are holding), and
makes keeping out griefers harder (since you can't tell for sure, for
example, if a guy is holding an ID card and using it to open doors and
spread fire).
```

### Comment 1: commenter 1, 2008-05-24 15:59 UTC

*(no text)*

### Comment 2: commenter 24, 2008-07-07 02:32 UTC

```
Added the ability to examine almost everything while an observer
```

- Attachment [observer examine.patch](attachments/52_5513259402698794386_observer%20examine.patch), 9,956 bytes

### Comment 3: commenter 1, 2008-07-07 02:46 UTC

```
Comment deleted
```

### Comment 4: commenter 24, 2008-07-07 18:03 UTC

```
Comment deleted
```

### Comment 5: commenter 1, 2008-07-07 18:59 UTC

```
Comment deleted
```

### Comment 6: commenter 24, 2008-08-03 05:51 UTC

```
Tried a different tactic by creating an invisible and intangible observer mob; also
added an observer mode for admins
Not production ready (may be able to interact with certain objects still)
```

- Attachment [observer mob v1.patch](attachments/52_8942004240742167372_observer%20mob%20v1.patch), 5,324 bytes

### Comment 7: commenter 24, 2008-08-03 06:12 UTC

```
Closer to Production Ready
- added lots of is_active and can_use_hands checks for verbs
- observers should no longer be able to deploy_nukes and such
- humans should no longer be able to emote when inactive (unconscious)
```

- Attachment [observer mob v2.patch](attachments/52_49058242164105433_observer%20mob%20v2.patch), 11,211 bytes

### Comment 8: commenter 24, 2008-08-16 18:41 UTC

```
Applied Patch
```

- Attachment [observer mob v3.patch](attachments/52_6983710709729221213_observer%20mob%20v3.patch), 12,832 bytes

### Comment 9: commenter 24, 2008-08-16 20:47 UTC

```
Add "anchored = 1" to mob/observer/var to avoid it being pushed around
```
