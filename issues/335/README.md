# Issue 335: Ghost issues

| Field | Value |
|---|---|
| Status | New |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2009-03-31 07:20 UTC |
| Last comment | 2009-04-19 09:33 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/335 |

## Comments

### Comment 0: commenter 57, 2009-03-31 07:20 UTC

```
<b>What steps will reproduce the problem?</b>
1. Kill a man
2. Stuff him into a closet
3. Weld the closet shut

<b>What is the expected output? What do you see instead?</b>

Dead man should be able to ghost. Dead man can't ghost if the loset is 
closed. If it's eventually opened and then welded again and a ghost is 
spawned, it's trapped in the closet.
```

### Comment 1: commenter 49, 2009-04-01 02:56 UTC

```
There is also an issue with the ghost mode and different z-levels, notably, every
time the ghost 'leaves' the z-level by moving off the edge, the screen goes black.

As well, since the ghost spawns where the corpse is, this means that any person not
quick enough to ghost before their body leaves the z-level will end up creating their
ghost on a completely empty level.
```

### Comment 2: commenter 22, 2009-04-19 09:33 UTC

```
This is an issue of space/entered not checking if you are a ghost.
```
