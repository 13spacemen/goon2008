# Issue 2: False wall 100% insta-detection by hitting with object, and bug with icon (isno)

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-20 20:04 UTC |
| Last comment | 2008-05-21 03:00 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/2 |

## Comments

### Comment 0: commenter 1, 2008-05-20 20:04 UTC

```
Right now, you can easily detect a false wall by hitting all walls with an
object (like a toolbox). Only false walls will respond with &quot;you push the
wall but nothing happens.&quot; This patch fixes that.

Also, now that false walls are a turf, the transparency where the floor
tile went doesn't work any more, so here's a new doorf.dmi that fixes the
issue. (You'll have to do a clean compile to have the new icon recognized,
or delete the RSC file.)
```

- Attachment [bugfix-noticing-false-walls.patch](attachments/2_-710733896116918710_bugfix-noticing-false-walls.patch), 4,376 bytes
- Attachment [doorf.dmi](attachments/2_8203626891116637081_doorf.dmi), 1,564 bytes

### Comment 1: commenter 4, 2008-05-21 03:00 UTC

*(no text)*
