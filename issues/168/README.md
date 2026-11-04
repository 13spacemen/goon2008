# Issue 168: People spawn on the same spawn point for same job

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-01 05:27 UTC |
| Last comment | 2008-07-14 22:12 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/168 |

## Comments

### Comment 0: commenter 22, 2008-07-01 05:27 UTC

```
Everyone who has the same job seems to spawn on the same spawnpoint, at
least for Station Engineers. Have not tested if the same is true for any
other jobs.
```

### Comment 1: commenter 11, 2008-07-12 22:33 UTC

```
fixed- instead of using locate() off the bat it loops through all /obj/start, checks
if someone's already there and moves on to the next one if so.

if all else fails, it falls back to the old behavior.
```

- Attachment [spawnfix.unstable.patch](attachments/168_-6792423169994602642_spawnfix.unstable.patch), 636 bytes

### Comment 2: commenter 1, 2008-07-13 16:33 UTC

```
Have you actually tested this patch? I don't think this line:

if (locate(/mob) in sloc.loc)

does what you want it to do.
```

### Comment 3: commenter 11, 2008-07-14 05:14 UTC

```
like i said earlier, it does exactly what I want it to do (which is find mobs in the
selected turf). while it ain't pretty it works (and seems to be the byond way to do
this?).

I guess I could do something ugly like closets do when they close:
for(var/obj/item/I in src.loc)

but this seems to work, and doesn't require much inside or outside the loop to make
it skip to the next point (unlike using a for loop)
```

### Comment 4: commenter 1, 2008-07-14 22:12 UTC

*(no text)*
