# Issue 281: Players see the bottom-left map corner before spawning

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1, Revision565 |
| Stars | 0 |
| Opened | 2008-08-26 03:00 UTC |
| Last comment | 2008-08-29 23:01 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/281 |

## Related SVN revisions

Commits whose log message cites this issue:

- r565, 2008-08-29, kelson, `f50394fd7` on `/branches/kelson/unstable`: Issue 281: Set /mob/prespawn sight BLIND bit

Revisions named by the issue's `Revision` labels:

- r565, 2008-08-29, kelson, `f50394fd7` on `/branches/kelson/unstable`: Issue 281: Set /mob/prespawn sight BLIND bit

## Comments

### Comment 0: commenter 24, 2008-08-26 03:00 UTC

```
mob/prespawn needs to have vision disabled
```

### Comment 1: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 2: commenter 24, 2008-08-29 23:00 UTC

```
Quick Fix: set the BLIND bit on prespawn
Committed attached as rev 565
```

- Attachment [blinded prespawn v1.patch](attachments/281_6731366104548582060_blinded%20prespawn%20v1.patch), 394 bytes

### Comment 3: commenter 24, 2008-08-29 23:01 UTC

*(no text)*
