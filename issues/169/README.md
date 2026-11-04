# Issue 169: Dismemberment

| Field | Value |
|---|---|
| Status | WontFix |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-07-01 15:35 UTC |
| Last comment | 2008-08-03 02:48 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/169 |

## Comments

### Comment 0: commenter 23, 2008-07-01 15:35 UTC

```
Dismemberment for the unstable revision 269

Body parts have a brute damage taken% chance to snap off, getting your 
hand or arm severed makes that hand unusable, losing a leg or a foot makes 
you move slower and decapitation makes you dead. Damage done to severed 
limbs is unhealable.

Also removes a the overlapping part of the leg and foot icons in human.dmi 
and dam_mask.dmi.

The dismemberment code works, but is pretty damn crude I think. Might be 
because this is the first time I do any coding in almost 10 years.

It would be nice if this could be added.
```

- Attachment [dismemberment.patch](attachments/169_3496932435610860054_dismemberment.patch), 19,273 bytes

### Comment 1: commenter 2, 2008-07-02 13:42 UTC

```
Not sure how nice this will be in terms of gameplay, since you can't really target
body parts in /unstable, but if the odds are low enough (make it a 'once in a while
awesome' thing not a 'there goes my leg again' thing) it'd add hilarity. I approve!
```

### Comment 2: commenter 23, 2008-07-02 16:25 UTC

```
Oops, seems like the patch I made is missing one file, here's a fixed version which 
fixes a couple of bugs too.

And dismemberment should't be too common, there's a minium damage for it now, so you 
can't toolbox someone's head off. High damage attacks like laser and explosions 
should trigger it more often.
```

- Attachment [dismemberment_1.1.patch](attachments/169_-6302184934065993963_dismemberment_1.1.patch), 20,223 bytes

### Comment 3: commenter 1, 2008-07-06 19:54 UTC

```
That patch doesn't include the .dmi files.

The way you determine if things are severed just doesn't work at all - 8 damage as a
cutoff is lower than oxygen tanks deal, for instance, which doesn't really make
sense. There need to be separate piercing, slashing, and bludgeoning damage types
(lol d&d) for this to work sensibly, and that'd take a long time to implement because
all existing weapons would need to be changed.
```

### Comment 4: commenter 23, 2008-07-07 21:24 UTC

```
Right, I left the dismemberment chance in take_damage, but it shouldn't matter since 
damage is always given as take_damage(burn = foo, toxin = bar). Only explosions, 
wirecutters and superstrength can rip libs off. Also the code is much cleaner now.
```

- Attachment [dismemberment_1.2.patch](attachments/169_7085300892130169182_dismemberment_1.2.patch), 18,566 bytes
- Attachment [dam_mask.dmi](attachments/169_6295032126104171311_dam_mask.dmi), 1,499 bytes
- Attachment [human.dmi](attachments/169_535655696835899425_human.dmi), 1,778 bytes
- Attachment [humansevered.dmi](attachments/169_-8456463824275432378_humansevered.dmi), 1,837 bytes

### Comment 5: commenter 1, 2008-07-10 19:43 UTC

*(no text)*

### Comment 6: commenter 1, 2008-07-12 16:59 UTC

```
I've reverted this because it slows down the game significantly more than the
features it adds are worth - new /icon is a very expensive operation. It was using up
at least 1/5 as much CPU as updatecell, which is a huge amount given how inefficient
and awful updatecell() is and the fact that it's called every second for every single
turf.
```

### Comment 7: commenter 1, 2008-08-03 02:48 UTC

```
well it looks like this probably isnt being updated and honestly im not that
concerned about it
```
