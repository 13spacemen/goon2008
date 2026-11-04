# Issue 222: Fire spreads through doors when there are two on one tile

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-26 23:02 UTC |
| Last comment | 2008-07-30 02:47 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/222 |

## Comments

### Comment 0: commenter 22, 2008-07-26 23:02 UTC

```
If there is more then one door on a tile, and you open one of them (Example
the windoor/firedoor combo on the left of medbay) it will set updatecell =
1 and the fire/plasma/etc will flow through and eat you :(

Someone add a check for more doors on the tile so this doesn't happen.
 
```

### Comment 1: commenter 11, 2008-07-30 01:51 UTC

```
best I can tell this is fixed in unstable with the new DiffusionLinks proc (which is
used to check for air- and thus fire- propogation). In the old code it appears to be
a race between the two doors setting updatecell (which was the only factor
determining if a cell updated or not in the old code).
```

### Comment 2: commenter 1, 2008-07-30 02:47 UTC

```
i will assume ragzilla is right because i am gullible like that
```
