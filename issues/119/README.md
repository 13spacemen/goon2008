# Issue 119: Beacon in a locker doesn't tp into locker

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low |
| Stars | 0 |
| Opened | 2008-06-17 22:46 UTC |
| Last comment | 2008-07-13 18:07 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/119 |

## Comments

### Comment 0: commenter 2, 2008-06-17 22:46 UTC

```
If you place a beacon inside a closed locker, and by random chance the TP
actually goes straight there, the person should tp into the locker (not on
top of it).
```

### Comment 1: commenter 1, 2008-07-10 19:57 UTC

*(no text)*

### Comment 2: commenter 11, 2008-07-13 04:38 UTC

```
adds teleporting into lockers (on the very rare chance you actually teleport directly
into it), ~ 11% chance on regular teleport, 0.08% chance on a hand teleport).

also moves the actual "maek mob teleport" code into a /proc/do_teleport function
which accepts target mob, destination beacon, and a 'precision' (2 squares for
teleport station, 5 for hand teleporter- same as before the changes).

also fixes some random bugs like lack of support for multiple beacons in an area, and
hand teleports being completely broke on the Y axis.
```

- Attachment [lockerteleport.unstable.patch](attachments/119_-286310248148261521_lockerteleport.unstable.patch), 3,396 bytes

### Comment 3: commenter 1, 2008-07-13 18:07 UTC

*(no text)*
