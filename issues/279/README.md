# Issue 279: Fire doesn't burn (people)

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1, Revision567 |
| Stars | 0 |
| Opened | 2008-08-25 00:28 UTC |
| Last comment | 2008-09-02 23:47 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/279 |

## Related SVN revisions

Commits whose log message cites this issue:

- r567, 2008-09-02, kelson, `688bc3ead` on `/branches/kelson/unstable`: Issue 279: Fire doesn't burn players

Revisions named by the issue's `Revision` labels:

- r567, 2008-09-02, kelson, `688bc3ead` on `/branches/kelson/unstable`: Issue 279: Fire doesn't burn players

## Comments

### Comment 0: commenter 24, 2008-08-25 00:28 UTC

```
At present, provided the toxic fumes don't kill people, heat/cold has no
effect on people
```

### Comment 1: commenter 24, 2008-08-29 01:31 UTC

```
Hot gas scalds the lungs and flames burn the body in the attached patch
- naked players are resistant to temperatures until 80 deg C
- clothed players are resistant to temperatures until 100 deg C
- firesuited players are resistant to temperatures until 1300 deg C
- hot gasses start scalding the threat at 75 deg C (masks = 1/4 burn dmg)
```

- Attachment [fire patch v1.patch](attachments/279_222008251160628987_fire%20patch%20v1.patch), 5,414 bytes

### Comment 2: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 3: commenter 24, 2008-09-02 23:47 UTC

```
IrRelevant Changes
- Life no longer sets src.lying
- Life no longer sets src.is_blind

Committed (with movement.dm mod) in rev 567
```

- Attachment [fire patch v2.patch](attachments/279_8295533032636621617_fire%20patch%20v2.patch), 5,363 bytes
