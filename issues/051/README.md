# Issue 51: When shuttle arrives, people in space magically are inside it.

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-23 20:47 UTC |
| Last comment | 2008-07-14 22:12 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/51 |

## Comments

### Comment 0: commenter 1, 2008-05-23 20:47 UTC

```
It should put them out of the way or kill them. Right now, it's odd.
```

### Comment 1: commenter 2, 2008-05-23 23:30 UTC

```
Comment deleted
```

### Comment 2: commenter 1, 2008-05-24 15:59 UTC

*(no text)*

### Comment 3: commenter 2, 2008-06-24 01:13 UTC

```
There are a lot of abuses that can be done with the shuttle warping in the
way it currently does:

 - If you build a wall right where the shuttle doors appear, the shuttle
doors no longer operate and you cannot destroy the rwall

 - If you place the prototype pod where the shuttle doors appear, the doors
still operate but the pod is drawn below the shuttle floor yet still
impedes your movement (becomes an invisible barrier)

 - Anything that changes the area type away from /turf/shuttle (I think
that's the path) stops that portion of the shuttle from beaming out. Eg:
building floors or walls where the shuttle beams in will make a gap in the
shuttle as it beams away at end of round.
```

### Comment 4: commenter 11, 2008-07-14 17:39 UTC

```
this should address all the listed issues for shuttles:

all /atom/movable in the entry area are pushed to the side, and thrown east
all non /turf/space in the destination area are converted to /turf/space (this opens
up a possible exploit to stay on the shuttle by building yourself into a wall, but
it's the best I can come up with for now)

http://evilgeni.us/~ragnar/ss13/before.png
http://evilgeni.us/~ragnar/ss13/after.png

(pictures from different tests, but the principle holds)
```

- Attachment [shuttlechanges.unstable.patch](attachments/51_-3637037860671001458_shuttlechanges.unstable.patch), 2,300 bytes

### Comment 5: commenter 11, 2008-07-14 18:06 UTC

```
attached full patch + fix for "hey this could throw people through the entire
station" which while hilarious, would suck for the person thrown.
```

- Attachment [shuttlechanges2.unstable.patch](attachments/51_2568439431537290444_shuttlechanges2.unstable.patch), 2,189 bytes

### Comment 6: commenter 1, 2008-07-14 22:12 UTC

*(no text)*
