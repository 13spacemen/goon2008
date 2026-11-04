# Issue 203: Directional control of Cameras

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Medium, Usability |
| Stars | 0 |
| Opened | 2008-07-20 23:44 UTC |
| Last comment | 2008-08-19 15:30 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/203 |

## Comments

### Comment 0: commenter 24, 2008-07-20 23:44 UTC

```
Cameras should be (intuitively) selectable by direction. Hitting &quot;west&quot;
should, similar to a moving player, allow camera control to shift westward
to the nearest camera.

```

### Comment 1: commenter 24, 2008-07-21 00:17 UTC

```
The patch is kind of verbose (non-elegant N/E/S/W switch), but accomplishes the above!
```

- Attachment [Camera Control v1.patch](attachments/203_-6257351833139965612_Camera%20Control%20v1.patch), 9,849 bytes

### Comment 2: commenter 1, 2008-07-21 05:49 UTC

```
I've applied this, with a different camera switching algorithm, into unstable. I'd
like to add the feature of "click on a turf to switch to the nearest camera that's in
the same area as it", though - there are still some cameras that are unreachable
using just the arrow keys, and the menu is god-awful.
```

### Comment 3: commenter 1, 2008-07-21 06:02 UTC

```
ok ive added that and it is incredible and i dont know why we didnt add it earlier,
it took 12 minutes to implement and makes playing as AI 2000 times easier
```

### Comment 4: commenter 22, 2008-08-19 15:30 UTC

*(no text)*
