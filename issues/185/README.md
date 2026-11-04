# Issue 185: False wall patch

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-08 22:04 UTC |
| Last comment | 2008-07-10 20:50 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/185 |

## Comments

### Comment 0: commenter 28, 2008-07-08 22:04 UTC

```
Lets you open false walls that you 'know' are there without mashing lmb.  A
false wall is known if you built it or if you've previously opened it.

Should work and stuff.  One problem might be the specialisation in type
from 'mob' to 'mob/carbon'.  But only carbons should ever be able to pick
up metal and attack girders with it, right?
```

- Attachment [knownfwall.patch](attachments/185_1324697168774132390_knownfwall.patch), 4,040 bytes

### Comment 1: commenter 28, 2008-07-08 22:10 UTC

```
oh it's for unstable btw
```

### Comment 2: commenter 1, 2008-07-08 22:57 UTC

```
imo, false walls you've seen being opened (and perhaps that you've seen while opened,
although that might be hard to implement) should also count for "knowing" about them.
```

### Comment 3: commenter 2, 2008-07-09 21:05 UTC

```
I think that would be a bit too complex, PLUS just because you saw a door open
doesn't mean you know how to open it. Where's the hidden latch? At least you know to
mash the LMB on that particular square.
```

### Comment 4: commenter 1, 2008-07-10 20:50 UTC

```
Tracking known_fwalls for each individual mob/carbon seems unnecessary, but I've
applied the rest of the patch.
```
