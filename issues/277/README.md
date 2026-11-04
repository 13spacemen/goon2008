# Issue 277: Oxygen Tanks Don't Work in Space

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Critical, Revision562, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-24 16:05 UTC |
| Last comment | 2008-08-29 02:25 UTC |
| Comments | 9 |
| Archive page | https://code.google.com/archive/p/ss13/issues/277 |

## Related SVN revisions

Commits whose log message cites this issue:

- r562, 2008-08-29, kelson, `5fdd6ac0d` on `/branches/kelson/unstable`: Issue 277: Oxygen tanks in space

Revisions named by the issue's `Revision` labels:

- r562, 2008-08-29, kelson, `5fdd6ac0d` on `/branches/kelson/unstable`: Issue 277: Oxygen tanks in space

## Comments

### Comment 0: commenter 37, 2008-08-24 16:05 UTC

```

After testing a few different scenarios on my server, I found that while
oxygen tanks do in fact protect you while in the station, the second you
step into space, even if you are wearing a space suit and medical mask, the
tank fails and you suffocate.
```

### Comment 1: commenter 22, 2008-08-24 16:58 UTC

```
Medical masks do not keep all the air in, think of them as lossy.. The air escapes.
You have to wear a space helmet to keep all the air in :)

Gasmasks however are not lossy and do not require space helmets.
```

### Comment 2: commenter 22, 2008-08-24 17:00 UTC

```
Woops
```

### Comment 3: commenter 37, 2008-08-24 17:00 UTC

```
Comment deleted
```

### Comment 4: commenter 37, 2008-08-24 17:01 UTC

```
Sorry about that, I assumed the term Space Suit include both the actual suit, and
the helmet. I was using both in addition to the mask/tank.

```

### Comment 5: commenter 24, 2008-08-26 02:21 UTC

```
Relevant Changes:
- carbon life-forms continue breathing in space now
- internals will now leak to turf if the rate is too high
- room-gas mixes with internal-gas using leaky masks; now even at max rate
- increased damage from plasma (slightly) and decreased medical mask filtering
```

- Attachment [quick patch v1.patch](attachments/277_-684001556599994891_quick%20patch%20v1.patch), 7,936 bytes

### Comment 6: commenter 24, 2008-08-28 01:29 UTC

```
New category - used until patches are committed
```

### Comment 7: commenter 24, 2008-08-29 02:25 UTC

```
Patch commited unchanged in revision 562
```

### Comment 8: commenter 24, 2008-08-29 02:25 UTC

```
Patch commited unchanged in revision 562
```
