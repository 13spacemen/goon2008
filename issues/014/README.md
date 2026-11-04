# Issue 14: can throw in any direction, even diagonally (and other enhancements)

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-21 21:07 UTC |
| Last comment | 2008-06-16 07:19 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/14 |

## Comments

### Comment 0: commenter 1, 2008-05-21 21:07 UTC

```
This patch makes it so that pressing the throw button puts you in throw
mode, and you click on a place to throw your active item at. It also fixes
the old &quot;space inertia&quot; bug where throwing an item while moving in space
would cause you to completely change direction, even if it was just a piece
of paper - now, throwing an item moves you one square back, but you keep
your old inertia. There are also various small bugfixes and other changes
related to throwing.

With this, 1/3 of the uses for the &quot;direction&quot; variable are gone. Once I
rework the wall creation and wire placement methods, we'll be able to
eliminate the movement panel entirely (just leaving &quot;run&quot;).

This also has updated screen.dmi and screen1.dmi, with the &quot;active throwing
mode&quot; icon thing.
```

- Attachment [removingdirection-throwing-isno.patch](attachments/14_-4603800172473216309_removingdirection-throwing-isno.patch), 37,361 bytes
- Attachment [screen.dmi](attachments/14_8993575116789233996_screen.dmi), 10,418 bytes
- Attachment [screen1.dmi](attachments/14_3410275181650756202_screen1.dmi), 16,375 bytes

### Comment 1: commenter 2, 2008-05-22 12:56 UTC

```
I'm assuming that you click anywhere on the screen to huck something, and it flies
only as far as you have arm strength?

Or can you only click in the standard 8 directions?

I can't imagine you actually did the math to do path mapping otherwise.
```

### Comment 2: commenter 1, 2008-05-23 17:45 UTC

*(no text)*

### Comment 3: commenter 1, 2008-05-23 21:13 UTC

```
Yeah, the first. It uses http://en.wikipedia.org/wiki/Bresenham_algorithm and stops
after throw_range tiles.
```

### Comment 4: commenter 1, 2008-05-24 15:46 UTC

*(no text)*

### Comment 5: commenter 1, 2008-06-04 00:48 UTC

```
Fixed in my SVN.
```

### Comment 6: commenter 2, 2008-06-16 07:19 UTC

```
Warning, warning, AI gets the [throw] button with this patch. :)
```
