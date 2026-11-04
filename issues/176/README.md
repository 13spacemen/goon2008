# Issue 176: Weapons go through glass

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-04 13:12 UTC |
| Last comment | 2008-07-31 03:40 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/176 |

## Comments

### Comment 0: commenter 24, 2008-07-04 13:12 UTC

```
Moving around and click spamming the grille past reinforced windows, it is
possible to hit the floor (and create panels). The grille/window are never hit.

Expected Behavior:
Weapons cannot pass through the window to hit the floor

My guess is this is due to the weapon hitting the bottom layer (turf/floor)
while moving while ignoring top layers (obj/window, obj/grille)
```

### Comment 1: commenter 1, 2008-07-10 20:13 UTC

```
this is probably related to the issue where if you attack an airlock with a crowbar
it sometimes just crowbars up the floor tile.
```

### Comment 2: commenter 11, 2008-07-31 01:28 UTC

```
youcantreachthat!

fixes atom/DblClick() to not be retarded in that assuming it will only ever be called
on things in a turf, and never on a turf itself (ie, it uses find_turf now).

also cleans up a redundant loop in the window/CheckPass code.
```

- Attachment [youcantreachthat.unstable.patch](attachments/176_-9142574358855150599_youcantreachthat.unstable.patch), 4,392 bytes

### Comment 3: commenter 11, 2008-07-31 02:18 UTC

```
according to kurper this affects inventory management, we'll see about that!
```

### Comment 4: commenter 11, 2008-07-31 02:52 UTC

```
updated to not touch  the M-M-M-M-M-M-MONSTERLINE since that should probably keep
referring to src.loc
```

- Attachment [youcantreachthat.unstable.v2.patch](attachments/176_-857672049932314912_youcantreachthat.unstable.v2.patch), 3,901 bytes

### Comment 5: commenter 1, 2008-07-31 03:40 UTC

*(no text)*
