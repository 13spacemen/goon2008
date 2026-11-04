# Issue 255: Computer interface/backend update

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low, Maintainability, Revision552 |
| Stars | 0 |
| Opened | 2008-08-03 19:33 UTC |
| Last comment | 2008-08-23 17:42 UTC |
| Comments | 11 |
| Archive page | https://code.google.com/archive/p/ss13/issues/255 |

## Related SVN revisions

Commits whose log message cites this issue:

- r552, 2008-08-23, kelson, `58ecbd0d2` on `/branches/kelson/unstable`: Issue 255: Computer interface updated

Revisions named by the issue's `Revision` labels:

- r552, 2008-08-23, kelson, `58ecbd0d2` on `/branches/kelson/unstable`: Issue 255: Computer interface updated

## Comments

### Comment 0: commenter 24, 2008-08-03 19:33 UTC

```
Cryo.dm is a travesty of code of ridiculous length. Since I can't build up
the motivation to take it down in one attempt, this issue will track
updates throughout the file. Updates will not address FUNCTIONALITY, only
maintainability, and need not be applied until the file is complete
```

### Comment 1: commenter 24, 2008-08-03 20:57 UTC

```
Byond's preprpocessor? Not so good.
```

- Attachment [cryo v1.patch](attachments/255_-978383370665319341_cryo%20v1.patch), 8,562 bytes

### Comment 2: commenter 11, 2008-08-05 11:38 UTC

```
cryo isn't that long ...

<pre>
$ find code/ -path '*.svn' -prune -o -type f -print0 > tmp
$ wc --files0-from\=tmp -l | sort -bn | tail -n 15
    540 code/data/changelog.dm
    568 code/game/atmo_control.dm
    630 code/game/mob/carbon/equipment.dm
    686 code/game/demo2.dm
    759 code/game/machinery/airlock.dm
    844 code/game/airtunnel.dm
   1034 code/game/computer.dm
   1611 code/game/cryo.dm
   1691 code/game/weapons.dm
   1740 code/game/newpipe.dm
   2559 code/game/power.dm
   2959 code/atoms.dm
   3022 code/game/demo.dm
   4313 code/game/items.dm
  39234 total
</pre>
```

### Comment 3: commenter 24, 2008-08-06 00:31 UTC

```
Compared to files that handle the VAST majority of functionality? The medical code is
not the largest, but it is unmaintainable similar to how the gas code (clocking in
around the same length) had been (now closer to 400 with near-identical functionality)
```

### Comment 4: commenter 24, 2008-08-06 03:10 UTC

```
Relevant Changes:
- disk upload/backup is referenced but not implemented
- removed redundant usr.can_use_hands() check
- modified blood type selection display
- fixed inconsistent casing in menus
- fixed inconsistent back button

Bug Fixes:
- Computers can no longer be used after power is cut
- Player's mental state can now be set back to stable
- Player blood types are set in the medical database now
```

- Attachment [cryo v2.patch](attachments/255_3536882001676394022_cryo%20v2.patch), 39,606 bytes

### Comment 5: commenter 24, 2008-08-06 03:21 UTC

```
TODO:
- create generic computer interface (for interact/Topic)
- create parent /obj/machinery/computer/interact used by children
- seperate cryo.dm into files in game/machinery/computer directory
- restructure menu control code to be more intuitive (break out by function)
```

### Comment 6: commenter 24, 2008-08-06 22:59 UTC

```
Relevant Changes:
- cryo.dm sperated into component files
- added eject command to cryo_cell menu
- renamed /move_eject() to /empty_capsule()
- renamed /move_inside() to /enter_capsule()
- removed redundant gas temperature initializations
- removed inconsitent cryo_cell density upon breaking
- go_out renamed to eject_occupant (only called internal)
- removed inconsistent item disposal when occupying cryo_cell (all drop now)
- moved gas initialization from cryo_cell/New() to cryo_cell/var in atoms.dm

Bug Fixes:
- fixed bug in newpipe which modified temperatures incorrectly
- occupants were trapped when the cryo_cell broke (blob/explosion)
- Power was checked after gas leaked in /obj/machinery/cryo_cell/process()
- None of the cryo_cell functions checked for stat & BROKEN (only NOPOWER)
```

- Attachment [cryo v3.patch](attachments/255_-8385009558320000_cryo%20v3.patch), 129,923 bytes

### Comment 7: commenter 24, 2008-08-13 05:17 UTC

```
Relevant Changes (no patch tonight)
- Freezer.gas/ngas now initialized in atoms.dm
- Coolant/Oxygen/Plasma now stored in list/rate
- Removed useless formatting codes from interact/Topic
- Implemented dd_range(A,B,C) which returns C in [A,B]
- Implemented /obj/machinery/interact and /Topic with proper return values
```

### Comment 8: commenter 24, 2008-08-14 01:03 UTC

```
Relevant Changes:
- add_fingerprint() now called in /obj/machinery/Topic
- figured out preformated text tags (yay for (pretty) headaches)
- rate_control procedure added (likely to rename as modify_variable)
- removed constant refreshing of window and auto-zeros chemical flows
- freezer works a million times better than before; check it out


```

- Attachment [cryo v4.patch](attachments/255_-8010509857041147510_cryo%20v4.patch), 129,743 bytes

### Comment 9: commenter 24, 2008-08-18 00:59 UTC

```
This is the last restructuring patch; follow-up with troubleshooting updates
```

- Attachment [cryo v5.patch](attachments/255_5562876442863256795_cryo%20v5.patch), 126,667 bytes

### Comment 10: commenter 24, 2008-08-23 17:42 UTC

```
Relevant Changes:
- Added dd_range in a previous version, but didn't comment
- Split card.dm, communications.dm, and pod.dm out of computer.dm
- Removed code belonging to non-computer functions to appropriate files
- The blob now destroys all equipment instead of just breaking sometimes
- The communications console now auto-refreshes after calling the shuttle
- Made the log computer a proper computer - still needs a good interact/Topic
- Power monitors can no longer be hit with ID cards - act the same as computers
- Cleaned up ID modification computer display (no more "'s ID Card()" displayed)
```

- Attachment [cryo v6.patch](attachments/255_-483385139109907309_cryo%20v6.patch), 130,301 bytes
