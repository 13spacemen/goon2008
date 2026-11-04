# Issue 270: Pirate Radio Station

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-19 15:24 UTC |
| Last comment | 2009-01-14 04:17 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/270 |

## Comments

### Comment 0: commenter 36, 2008-08-19 15:24 UTC

```
As of now it is pretty much impossible to broadcast a message without
giving away your identity. This makes it hard to spread propaganda about
the captain, or to plan rebellions without compromising your security.  As
a remedy to this, I believe that it would be beneficial if some sort of
pirate radio could be added.

Essentially this would be a large radio which can be pulled, but not picked
up. It would be created using metal, wires, and a few other assorted
materials. Upon clicking on it, a text box pops up, and anything entered
into this box would be broadcast using the name &quot;Unknown&quot;
```

### Comment 1: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 2: commenter 22, 2008-08-30 19:35 UTC

```
Alternatively this could be an attachment to a headset/radio?

A big pirate radio would be a lot cooler though
```

### Comment 3: commenter 24, 2008-08-31 15:25 UTC

```
I need to think about this one more; I'd prefer to see it handled through
modifications to a headset. This is easy to balance (mess up and the headset is
fried), but I need to think through how the modifications will be made challenging
(puzzle-like)
```

### Comment 4: commenter 25, 2008-12-12 23:13 UTC

```
This is a good idea.

Additional balance note:
make sure to make it either difficult to assemble, or make the materials needed hard 
to obtain (spread out over the station, not something that a high-ranking officer has 
some kind of spawning birthright to).

This is to make it so that this doesn't become a "hot item" that everyone keeps 
trying to get for themselves, like gloves (if they're still as plentiful as they were 
before on the station)...
```

### Comment 5: commenter 50, 2008-12-27 02:33 UTC

```
Here's a patch for the pirate radio thing.

Also, it has my money system.

Patch was made against stable (not this one, the one right before it). Apply in the
code/ directory, and add money.dm to the directory. Oh, and add the icons.
```

- Attachment [sam_patches.zip](attachments/270_-2488924951716822863_sam_patches.zip), 89,586 bytes

### Comment 6: commenter 50, 2008-12-27 22:11 UTC

```
Fixed patch.
```

- Attachment [money.diff](attachments/270_-5139487331039498578_money.diff), 31,053 bytes

### Comment 7: commenter 1, 2009-01-14 04:17 UTC

```
your patch is the wrong way around (goes from your version to ours), and we dont want
a money system.
```
