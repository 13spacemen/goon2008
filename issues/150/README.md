# Issue 150: Blob Mode Needs to be looked at

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-High, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-06-27 11:06 UTC |
| Last comment | 2008-10-26 17:08 UTC |
| Comments | 14 |
| Archive page | https://code.google.com/archive/p/ss13/issues/150 |

## Related SVN revisions

Commits whose log message cites this issue:

- r549, 2008-08-16, kelson, `0d2bbb5f3` on `/branches/kelson/unstable`: Issue 150: Blob mode didn't trigger victory
- r572, 2008-10-26, kelson, `1be378c39` on `/branches/kelson/unstable`: Issue 150: Fixing Blob Mode

## Comments

### Comment 0: commenter 20, 2008-06-27 11:06 UTC

```
The staff has won!
The alien organism has been eradicated from the station
The station is 0% intact.
... You hear a faint voice ...
You have given up life and succumbed to death.
OOC: ButtesAmUs: uh yay
OOC: Persh: yeah woo go staff
Everyone is dead! Resetting in 30 seconds!
OOC: Persh: WE SAVED THE DAY YAAY
```

### Comment 1: commenter 1, 2008-07-10 20:07 UTC

```
oh blob mode
```

### Comment 2: commenter 25, 2008-07-23 20:13 UTC

```
Blob sucks.
```

### Comment 3: commenter 24, 2008-08-15 02:00 UTC

```
I looking through the code and everything looks like it should work; not certain why
this is popping up though I'll come back to it again later.
```

### Comment 4: commenter 22, 2008-08-16 01:49 UTC

```
May also want to see why in the call shuttle proc if(ticker.mode == "blob") returns
false no matter what.

So it'll say it's calling the shuttle but in reality won't.

Actually all ticker.mode checks return false maybe byond hates me byond do you hate me?
```

### Comment 5: commenter 24, 2008-08-16 01:54 UTC

```
Comment deleted
```

### Comment 6: commenter 24, 2008-08-16 21:09 UTC

```
Appears blob/check_win was never called (not called for anything else either) - the
function is actually never apparently called for almost anything. I'm rewriting all
the modes to properly report whether the round is over (ie, "won")
```

### Comment 7: commenter 24, 2008-08-16 22:22 UTC

```
I've attached a simple patch to allow blob mode to end properly, but I'm also working
on a proper patch to the broken game_mode system

Extended ticker.event to be used by all modes as follows:
ticker.event = 0 (game running)
ticker.event = 1 (shuttle arrived)
ticker.event = 2 (shuttle departed)
ticker.event = 3 (time has run out)
ticker.event = 4 (station destroyed)
ticker.event = 5 (game completed)
```

- Attachment [quick patch.patch](attachments/150_-805989433194259959_quick%20patch.patch), 10,075 bytes

### Comment 8: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 9: commenter 24, 2008-09-08 01:36 UTC

```
Relevant Changes:
- World resets 30s after last player dies
- World aborts reset if a live player is detected
- Removed hard-coded reset after 30s from /mob/death()
- Megamonkey mode reimplemented (mob type was removed)

(no patch attached as there are still several issues to iron out)
```

### Comment 10: commenter 24, 2008-09-14 04:01 UTC

```
Relevant Changes (too many to list):
- significant changes in use of ticker.event code
- empty rescue shuttle auto-returns in blob mode (20m delay)
- blob mode checks if players are in the shuttle area, not just z != 1
- various ticker.*_process procs compiled into single ticker.game_process
- blob next_stage timer randomized (still "about" the same time as previously)

Bugs:
- nuclear: no check for all syndicate having died to end early
- nuclear: ticker.nuclear() called in weapon.dm - should use check_win for mode
- virus: not updated to match other modes (not included in *.dme anyhow)
- blob: life() should guarantee each blob the same number of "turns"
```

- Attachment [game modes v1.patch](attachments/150_-2137903231328659496_game%20modes%20v1.patch), 40,946 bytes

### Comment 11: commenter 24, 2008-10-20 01:11 UTC

```
Working with the previous setup was just a huge setup, so instead I tore out all the
old modes, the shuttle, and all /obj/move. This addresses a couple critical design
flaws in addition to the stated issue.

Relevant Changes (again, far too many to list)
- All game modes removed 
- The shuttle was completely removed
- Reimplemented blob, extended ("free form"), and meteor modes
- Unstable map modified to include new waiting area (crew quarters)
- New system is based on sets of missions; allows greater code reuse
```

- Attachment [game modes v2.patch](attachments/150_-6956092083338917841_game%20modes%20v2.patch), 467,272 bytes

### Comment 12: commenter 24, 2008-10-26 16:36 UTC

```
Relevant Changes:
- added murder mission
- cleaned up the cutting job

Patch to be committed later today
```

- Attachment [game modes v3.patch](attachments/150_1701076762464444094_game%20modes%20v3.patch), 472,920 bytes

### Comment 13: commenter 24, 2008-10-26 17:08 UTC

```
Committed in rev 572
```

- Attachment [game modes v4.patch](attachments/150_-7609068665029325784_game%20modes%20v4.patch), 466,084 bytes
