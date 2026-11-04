# Issue 242: apparently monkies have full slots

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-31 14:07 UTC |
| Last comment | 2008-10-26 17:14 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/242 |

## Related SVN revisions

Commits whose log message cites this issue:

- r573, 2008-10-26, kelson, `e83f288d7` on `/branches/kelson/unstable`: Issue 242: Monkey Slots

## Comments

### Comment 0: commenter 11, 2008-07-31 14:07 UTC

```
00:49 &lt; ragzilla&gt; tastylemondrops reports &quot;monkies have full slots&quot; - could
be because only the appearance gene was changed apparently

```

### Comment 1: commenter 11, 2008-08-02 21:36 UTC

```
they _appear_ to have full slots (the slots you cannot use are not X'd out with an
overlay anymore)
```

### Comment 2: commenter 24, 2008-08-15 03:38 UTC

```
So... what's the problem? Should they have more/less slots?
```

### Comment 3: commenter 11, 2008-08-15 11:20 UTC

```
they have the correct number of slots, the overlay on the hud that blocks out the
blocked slots is what's missing.
```

### Comment 4: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 5: commenter 24, 2008-10-10 01:38 UTC

```
Kurper's DNA system unfortunately just sets the player icon to that of a monkey,
without actually changing the character to a monkey.
```

### Comment 6: commenter 24, 2008-10-10 03:41 UTC

```
Relevant Changes:
- changing species force drops all items
- changing species creates new mob, deletes old
- seperated slot updates in /hud to a new procedure
- blocked slots correctly displayed after genetic change
```

- Attachment [dna conversion v1.patch](attachments/242_-5435296129872200832_dna%20conversion%20v1.patch), 6,442 bytes

### Comment 7: commenter 24, 2008-10-26 17:14 UTC

```
Committed in Rev 573
```
