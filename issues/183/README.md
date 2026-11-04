# Issue 183: Make cloaking device run on a non-rechargeable battery

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium, Revision560, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-08 18:10 UTC |
| Last comment | 2008-08-31 13:10 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/183 |

## Related SVN revisions

Commits whose log message cites this issue:

- r560, 2008-08-29, kelson, `8e5571a0e` on `/branches/kelson/unstable`: Issue 183: Cloaking device runs off power_cell

Revisions named by the issue's `Revision` labels:

- r560, 2008-08-29, kelson, `8e5571a0e` on `/branches/kelson/unstable`: Issue 183: Cloaking device runs off power_cell

## Comments

### Comment 0: commenter 25, 2008-07-08 18:10 UTC

```
Give it a battery that has like a 2-4 minute charge, so that the cloaking
device will not operate if the battery is spent.

Once the battery is dead, the cloaking device will become unusable.

OR, make it rechargeable at the engineering battery chargers, but in the
case give it something like a 2-minute charge.
```

### Comment 1: commenter 24, 2008-08-29 00:24 UTC

```
Comment deleted
```

- Attachment battery patch v1.patch, 3,963 bytes: **not recovered**

### Comment 2: commenter 24, 2008-08-29 00:38 UTC

```
Relevant Changes:
- cloaking_devices draw charge off power cells to use
- a standard 1000-charge power cell will last for 67s during continuous use
- power cells can be extracted from the cloaking_device using a screwdriver
- new cells can be inserted into cloaking_devices by holding the cell and clicking
```

- Attachment [battery patch v1.patch](attachments/183_-8679920216463530560_battery%20patch%20v1.patch), 5,702 bytes

### Comment 3: commenter 24, 2008-08-29 02:07 UTC

```
Committed in revision 560 with no modifications
```

### Comment 4: commenter 22, 2008-08-31 03:30 UTC

```
Only problem is ultra high capacity batteries (Most rooms have these,
experimental/teleporter have especially high values) last for fucking ever.

EX Teleporter lasts for 55 minutes.
```

### Comment 5: commenter 24, 2008-08-31 13:10 UTC

```
I fail to see how that is an issue; you created the ultra high capacity batteries,
this is the impact of them. It'd be retarded for cloaking devices to chew through
charge FASTER with higher-charge batteries. If they shouldn't be able to use the
higher cap batteries, that might be more reasonable, though I still see it as silly.

Game balance relies on important decisions - if there are surplus high cap batteries,
I'm sure players will use them. If they're all tied up in important / hard-to-reach
areas, then they will have to work hard to procure them.
```
