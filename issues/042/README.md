# Issue 42: Better health indications

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Branch-Kelson, Phase-Kelson-1, Revision576 |
| Stars | 0 |
| Opened | 2008-05-22 17:09 UTC |
| Last comment | 2008-11-01 22:13 UTC |
| Comments | 9 |
| Archive page | https://code.google.com/archive/p/ss13/issues/42 |

## Related SVN revisions

Commits whose log message cites this issue:

- r576, 2008-11-01, kelson, `5f723dfc2` on `/branches/kelson/unstable`: Issue 42: Better Health Indicators

Revisions named by the issue's `Revision` labels:

- r576, 2008-11-01, kelson, `5f723dfc2` on `/branches/kelson/unstable`: Issue 42: Better Health Indicators

## Comments

### Comment 0: commenter 2, 2008-05-22 17:09 UTC

```
It's really frustrating not knowing if you're dead, dying, unconscious, or
blind. Can we make 'blind' people have a vision ability of one tile (your
own)? That might be a good workaround for the blind thing. It would emulate
you feeling around and knowing that your standing on a floor tile or open
space.
```

### Comment 1: commenter 1, 2008-05-25 16:36 UTC

*(no text)*

### Comment 2: commenter 1, 2008-07-10 14:59 UTC

```
On this subject, if someone could make a skull and crossbones icon to replace the
current "dead" health indicator that'd be great. It should ideally be the same size
as the other indicators (with the same background), but something not more than about
28x28 (two pixel border) with a transparent background would be fine too.
```

### Comment 3: commenter 1, 2008-07-10 18:51 UTC

*(no text)*

### Comment 4: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 5: commenter 40, 2008-10-07 00:55 UTC

```
When blind you should have a 1 tile vision radius which is at half brightness
regardless of the state of the lighting around you and is also monochrome, to
indicate your inability to distinguish between colour-coded versions of the same
object. I'm pretty sure you can make things monochrome in byond
```

### Comment 6: commenter 41, 2008-10-11 14:06 UTC

```
Tried my hand at a skeleton. Decided to to use the existing graphic and draw a
skeleton inside of it.
```

- Attachment [skeleton.dmi](attachments/42_-7445643634211994521_skeleton.dmi), 469 bytes

### Comment 7: commenter 41, 2008-10-11 19:35 UTC

```
I don't really like the head on that one so I did another plus two more which are
just a skull with and without a crack.
```

- Attachment [skeleton.dmi](attachments/42_-6607073515806939422_skeleton.dmi), 453 bytes
- Attachment [skull.dmi](attachments/42_-4005738356206520532_skull.dmi), 429 bytes
- Attachment [skullcrack.dmi](attachments/42_-8690538603698047443_skullcrack.dmi), 448 bytes

### Comment 8: commenter 24, 2008-11-01 22:13 UTC

```
There was previously a "dead" indicator, but it looked very similar to the other
health indicators. I've attached my attempt at replacing it with a skull and
crossbones along with a patch to update several related issues. Health5.png is the
renamed exported file (icons are internally stored as PNGs) for easy viewing.

Relevant Changes:
- health5.dmi replaces previous health5 icon_state in screen1.dmi
- fixed bug whereby incapacitated people would stand up once killed
- added 5 second delay to automatic player transition to observer mode
- death no longer deletes the player hud; observer mob updates it automatically
- removed game-ending code from /mob/proc/death() (thought this was done previously)

Committed in rev 576
```

- Attachment [skull and crossbones v1.patch](attachments/42_4372929695921595010_skull%20and%20crossbones%20v1.patch), 5,707 bytes
- Attachment [screen1.dmi](attachments/42_-3510394240425601796_screen1.dmi), 17,042 bytes
- Attachment [health5.png](attachments/42_-5710021104997421542_health5.png), 408 bytes
