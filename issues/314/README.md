# Issue 314: BUG: Interaction across a divider

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low, Branch-Kelson, Phase-Kelson-1, Revision577 |
| Stars | 0 |
| Opened | 2008-12-08 01:49 UTC |
| Last comment | 2008-12-09 23:12 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/314 |

## Related SVN revisions

Commits whose log message cites this issue:

- r577, 2008-12-09, kelson, `ed75bb97c` on `/branches/kelson/unstable`: Issue 314- Interaction across a barrier

Revisions named by the issue's `Revision` labels:

- r577, 2008-12-09, kelson, `ed75bb97c` on `/branches/kelson/unstable`: Issue 314- Interaction across a barrier

## Comments

### Comment 0: commenter 24, 2008-12-08 01:49 UTC

```
Example) Players can click &amp; drag a body across a window, then interact
with the other player's inventory despite the barrier
```

### Comment 1: commenter 24, 2008-12-08 03:22 UTC

```
Relevant Changes:
- Added LinkBlocked helper function (tests windows/doors between turfs)
- Added DirBlocked helper function (tests windows/doors in a turf by direction)
- LinkBlocked used by MouseDrop, equip_e/done, and Topic for show_inv
```

- Attachment [click drag bug v1.patch](attachments/314_-1437377894941109052_click%20drag%20bug%20v1.patch), 3,428 bytes

### Comment 2: commenter 24, 2008-12-08 03:28 UTC

```
Future Improvements: Output message indicating a barrier has blocked the attempt
(particularly in equip_e)
```

### Comment 3: commenter 24, 2008-12-09 23:12 UTC

```
Patch applied in rev 577
```
