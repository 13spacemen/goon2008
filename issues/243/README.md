# Issue 243: various UI issues with death

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 14:07 UTC |
| Last comment | 2008-08-02 20:55 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/243 |

## Comments

### Comment 0: commenter 11, 2008-07-31 14:07 UTC

```
00:29 &lt; Persh&gt; when you die your vision is obscured in a way I can't
describe.. you can see all objects but not all turfs?
00:40 &lt; Persh&gt; if you alttab and come back into the byond window when
you're dead all your ui is gone, but the items you were wearing appear in
their respective slots
00:50 &lt; Persh&gt; if you respawn after dying your screen is just blackness
with your old ui icons fighting with the new ui icons
00:51 &lt; Persh&gt; You have to cancel camera view to fix it sorta
00:54 &lt; Kurper&gt; the screen stuff is broken yes
```

### Comment 1: commenter 11, 2008-08-02 18:29 UTC

```
/mob/carbon/proc/update_vision() was to blame for some of this, I've updated it to
give you 'view everything' if you're dead or have xray vision, it also bails out in
that if statement so you can't blindfold a dead person and screw up their sight.

your old equipment icons are still there though, once this is merged and I'm more
familiar with hud I can look at it, or you can fix it kurper :colbert:
```

- Attachment [deadvision.unstable.patch](attachments/243_-1017274951673251117_deadvision.unstable.patch), 976 bytes

### Comment 2: commenter 11, 2008-08-02 20:08 UTC

```
removes icons from screen when dead
```

- Attachment [deadicons.unstable.patch](attachments/243_-1983632310767808751_deadicons.unstable.patch), 2,438 bytes

### Comment 3: commenter 1, 2008-08-02 20:55 UTC

*(no text)*
