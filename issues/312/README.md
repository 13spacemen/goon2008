# Issue 312: lil bug

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low, Branch-Kelson, Phase-Kelson-1, Component-Logic, Maintainability |
| Stars | 0 |
| Opened | 2008-12-05 06:26 UTC |
| Last comment | 2009-01-15 04:52 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/312 |

## Comments

### Comment 0: commenter 1, 2008-12-05 06:26 UTC

```
line 18 of unique.dm in unstable should be rand(NUM_ALLELES - 1) most
likely. this is a slight bug if we don't ever change the number of alleles,
a big one if we do.
```

### Comment 1: commenter 1, 2009-01-15 04:52 UTC

*(no text)*
