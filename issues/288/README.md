# Issue 288: A lot of doors don't have an animation when they get emag'd

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-31 06:20 UTC |
| Last comment | 2008-08-31 16:39 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/288 |

## Comments

### Comment 0: commenter 22, 2008-08-31 06:20 UTC

```
Should probably fix that
```

### Comment 1: commenter 22, 2008-08-31 16:39 UTC

```
Fixed in stable by copying the closed door animation for regular windoors, the doors
in the morgue, and poddoors and renaming it [doorname]_spark.

This doesn't seem very acceptable for unstable, although the fix for regular door
(morguedoor) not having an access denied red light was to copy the closed door and
use that..
```
