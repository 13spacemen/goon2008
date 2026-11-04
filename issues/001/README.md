# Issue 1: Tasers don't use up charges at close range

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-20 19:46 UTC |
| Last comment | 2008-05-21 03:05 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/1 |

## Comments

### Comment 0: commenter 1, 2008-05-20 19:46 UTC

```
If you hit someone adjacent to you with a taser, they get stunned but the
taser doesn't use any charges. This makes tasers really good melee weapons,
which is probably not a good thing.

The attached patches (for isno and trunk) remedy this by making tasers use
up charges at close range, as well as giving them a total of 4 charges
rather than 3. This is so they are not quite as bad at long range against
moving targets, and also because that works better with the five-state (0%,
25%, 50%, 75%, 100%) icons for the taser.
```

- Attachment [taser-nerfcharges-trunk.patch](attachments/1_8350461323131321072_taser-nerfcharges-trunk.patch), 2,855 bytes
- Attachment [taser-nerfcharges-isno.patch](attachments/1_-154373167103339161_taser-nerfcharges-isno.patch), 2,856 bytes

### Comment 1: commenter 4, 2008-05-21 02:49 UTC

*(no text)*

### Comment 2: commenter 1, 2008-05-21 03:01 UTC

```
ooh, follow-up: the isno version of that patch has them at 8 rather than 4. which is
the better number of charges, i dunno.
```

### Comment 3: commenter 1, 2008-05-21 03:05 UTC

```
okay here's a patch
```

- Attachment [taser-4-charges-isno-followup.patch](attachments/1_-5416438775536415661_taser-4-charges-isno-followup.patch), 414 bytes
