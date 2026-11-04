# Issue 195: blowing up turret cover does not remove the turret

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-13 00:58 UTC |
| Last comment | 2008-07-13 18:25 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/195 |

## Comments

### Comment 0: commenter 11, 2008-07-13 00:58 UTC

```
<b>What steps will reproduce the problem?</b>
1. blow up AI upload
2. the covers will be gone

<b>What is the expected output? What do you see instead?</b>
the cover is gone, as well as the turret, as it is now the turret survives
as an invisible dense object so you cannot enter the square.

also turf/floor/grid should probably have a 'burned' airless plate style
graphic for it
```

### Comment 1: commenter 22, 2008-07-13 01:23 UTC

```
I've made it del the turret as well as the cover in stable, just del(src) in the die
process.
```

### Comment 2: commenter 1, 2008-07-13 18:25 UTC

*(no text)*
