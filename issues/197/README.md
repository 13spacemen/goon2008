# Issue 197: Make solar panels track the sun better

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-14 17:21 UTC |
| Last comment | 2008-11-01 22:14 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/197 |

## Related SVN revisions

Commits whose log message cites this issue:

- r570, 2008-10-13, kelson, `e17d89b01` on `/branches/kelson/unstable`: Issue 197: Solar Tracking
- r571, 2008-10-13, kelson, `9911479f8` on `/branches/kelson/unstable`: Issue 197: Solar Tracking

## Comments

### Comment 0: commenter 25, 2008-07-14 17:21 UTC

```
Currently it takes a lot of babysitting to get them to work and most of
all, to maintain them. 

Since it takes effort to actually build up the panels in the first place,
how about making the tracking system lock onto the energy source better, so
all you have to do is enable the tracking and the system takes over, once
everything is built.

This provides more of an incentive for building the panels, since currently
they very rarely produce power.

*Remove the directional control for the panels
*Remove the turning time for the panels
*Make the system handle when to change the direction of the panels... this
technology exists &lt;&lt;today&gt;&gt; already and makes the panels a lot cooler.

```

### Comment 1: commenter 24, 2008-07-20 23:37 UTC

```
I think taking the tracking code out of player hands would be a good move; though we
should probably maintain the directional control as well - avoid it entirely being
"drop a bunch of wires and get easy 100KW+ energy all round"
```

### Comment 2: commenter 25, 2008-07-21 14:36 UTC

```
Just have it provide less energy.

No player, realistically, is going to babysit solar panels.
```

### Comment 3: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 4: commenter 24, 2008-10-13 06:23 UTC

```
Relevant Changes:
- increased tracking granularity
- increased direction granularity
- should simplify tracking the sun
```

- Attachment [granular tracking v1.patch](attachments/197_3539696423771663807_granular%20tracking%20v1.patch), 11,163 bytes

### Comment 5: commenter 22, 2008-10-13 06:27 UTC

```
MAKE THESE STUPID JERKS ROTATE YOU BIG JERK
```

### Comment 6: commenter 24, 2008-10-13 15:56 UTC

```
Relevant Changes:
- solar panels visibly rotate
- corrected missing space in interface

Commited in rev 571
```

- Attachment [granular tracking v2.patch](attachments/197_814961945641712574_granular%20tracking%20v2.patch), 13,436 bytes

### Comment 7: commenter 24, 2008-11-01 22:14 UTC

*(no text)*
