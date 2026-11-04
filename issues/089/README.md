# Issue 89: Vacuum of space doesn't suck

| Field | Value |
|---|---|
| Status | Invalid |
| Labels | Type-Defect, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-26 23:59 UTC |
| Last comment | 2008-08-23 02:09 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/89 |

## Comments

### Comment 0: commenter 2, 2008-05-26 23:59 UTC

```
As soon as vacuum of space exposes a room, all air should vacate said room
in about ~5 seconds or so. Bonus points if loose objects suck towards the hole.
```

### Comment 1: commenter 24, 2008-07-07 02:37 UTC

```
This somewhat happens in the current unstable branch. If marked as space (because a
neighbor is now spacey), gas rushes towards the breach. We may want to consider a
more general solution - the more air that flows in a direction, the stronger the push
applied. This wouldn't require a vacuum to work - just pressure differentials.
```

### Comment 2: commenter 2, 2008-07-07 04:11 UTC

```
Yeah agreed, hyper pressurizing a room with dozens of broken plasma cans should
likewise flood into the rest of the station with great speed.
```

### Comment 3: commenter 11, 2008-07-29 04:40 UTC

```
turfs outside the station (in /area) don't seem to be 'spacey' in the current gas
code, this probably needs updated somewhat to decompress explosively...
```

### Comment 4: commenter 24, 2008-08-14 03:54 UTC

```
I'm not sure this is a valid issue:
- turfs outside the station are /turf/space
- overpressured rooms cause gas to 'instantly' flow into them (airforce=gas.total())
- turf/space instantly sucks all gas out of nearby rooms (airforce = 25000+gas.total())

```

### Comment 5: commenter 11, 2008-08-14 12:06 UTC

```
doesn't this only currently affect turfs that are directly adjacent correct? so
intra-room gas propagation is still the slow turf-turf exchange (until it hits a turf
that is adjacent to space) ?
```

### Comment 6: commenter 24, 2008-08-16 06:01 UTC

```
Turfs update by checking all their neighbors, comparing that to their internal gas
pressure (unless a neighbor is space in which case all gas is vented), then "gaining"
or "losing" gas "appropriately". Rooms gasses are updated fairly often though...
```

### Comment 7: commenter 24, 2008-08-23 02:09 UTC

```
Closing issue pending further information
```
