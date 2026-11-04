# Issue 152: Projectiles Go Through Glass

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-27 12:23 UTC |
| Last comment | 2008-07-31 03:43 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/152 |

## Comments

### Comment 0: commenter 20, 2008-06-27 12:23 UTC

```
Tasers and lasers go through glass. This is a huge pain in the ass because
if you're on one side of the glass READY TO SMASH with your toolbox and
that douchebag with a taser is behind some glass you will be shot and he
will laugh.

Turrets do this as well, sometimes even going through an rwall (See the AI
Upload on my server)
```

### Comment 1: commenter 24, 2008-07-04 02:00 UTC

```
This is intentional; lasers and turrets fire an "a_laser" and tasers fire an
"s_laser". These are both considered beam weapons which are specifically ignored by
(reinforced) windows. I could not duplicate this with reinforced walls (and the code
does not appear to allow it either). I did not test specifically with turrets, though
their projectile would not function any different than a laser_gun. Please let me
know if you can (repeatably) have them fire through walls.

I've attached two patches; the first (tinted windows) is a small patch that just
prevents directed energy weapons / tasers / turrets from firing through windows. The
second (taser fix) is much more complicated and hits a decent chunk of files. In
particular, it changes the taser projectile into /obj/bullet/electrode and changed
taser to /obj/item/weapon/gun/taser_gun.
```

- Attachment [tinted windows.patch](attachments/152_1358249133185677731_tinted%20windows.patch), 353 bytes
- Attachment [taser fix.patch](attachments/152_-5329173029951678074_taser%20fix.patch), 4,609 bytes

### Comment 2: commenter 11, 2008-07-31 01:44 UTC

```
this change affects #204 as well

i propose:

lasers shall continue to pass through glass, windoors to be updated to accomodate
this (as they currently block lasers)
tasers shall by stopped by glass, as every taser or theoretical taser i've heard of
relies on a direct, unobstructed air path to the target.
```

### Comment 3: commenter 1, 2008-07-31 01:57 UTC

```
sounds good to me, i dont know why i never applied this patch?
```

### Comment 4: commenter 11, 2008-07-31 02:16 UTC

```
because it breaks lasers! also tasers could be much better handled.

attached my patch, adds a new flag (GLASSPASS) which an obj/beam has to have to pass
through glass, also fixes issue #204 (which was already fixed in unstable, persh
broke it by applying the previous patch in this thread)

also makes windoors properly handle beams passing through them.
```

- Attachment [glasslasers.unstable.patch](attachments/152_7099016422641463639_glasslasers.unstable.patch), 2,932 bytes

### Comment 5: commenter 1, 2008-07-31 03:43 UTC

*(no text)*
