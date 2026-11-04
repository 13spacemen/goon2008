# Issue 29: Smear the Queer mode

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-22 02:48 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 11 |
| Archive page | https://code.google.com/archive/p/ss13/issues/29 |

## Comments

### Comment 0: commenter 1, 2008-05-22 02:48 UTC

```
We've played this a reasonable amount with admins, and everyone seems to
love it. It probably wouldn't be that hard to implement, although it does
depend a lot on the honor system (not going away from the station, for
instance). Still, it'd be nice to have as an actual builtin mode.
```

### Comment 1: commenter 1, 2008-05-24 15:49 UTC

*(no text)*

### Comment 2: commenter 2, 2008-07-01 02:07 UTC

```
I've pretty much got the code down for this, just need to tweak up a few things and
maybe make some randomized messages for it. It will rely on a few other patches to be
implemented first so I'll perhaps post a beta here later for /stable then do up the
real thing for /unstable in a week or so.
```

### Comment 3: commenter 2, 2008-07-24 09:18 UTC

```
Sorry dudes, looks like my PERSONAL LIFE ISSUES are not condusive to finishing this.

I've gotten it working fine in /stable, and I'm fairly certain only a few things need
to be changed to port it to the current /unstable as the files have hardly changed
(just a bit of Mob code).

I renamed "Smear the queer" to be the more palatable "Corporate Restructuring."

Issues with this:
 - Some of my messages are somewhat dorky and may be color coded incorrectly (red red
red)
 - There is no way to trigger "QueerMode" as an end-of-round fragfest
 - Quite possibly the biggest change: I altered when the end-of-round check is done
to make this happen. This may have very well broken all the other game modes, but I
can't really test that on my own anyway. The end of round check should be moved
anyway (should be called upon death of each person, which it doesn't currently).
Making this change will open the door to sending Admin a PM when traitor is killed.

I have, however, playtested this patch with a half dozen people and it seems to work
well. I would like to keep developing it but I just don't have enough time on my
hands, sorry. :(
```

- Attachment [restructuring.patch](attachments/29_6373100819129461134_restructuring.patch), 3,580 bytes

### Comment 4: commenter 2, 2008-07-24 09:21 UTC

```
Oh, how the gameplay works in my patch:

"Head office" sends a station-wide message fingering someone for not being a team
player, and ordering their "termination" (I'm sure they mean peacefully). Upon the
target dying, the HO sends out a correction notice saying, woops, we picked the wrong
guy, it was actually THIS OTHER guy.

If you are the target, killing someone else will also trigger the reset, giving you
an out (the queer always fought back anyway, this'll give you a reason to).
```

### Comment 5: commenter 1, 2008-07-24 19:16 UTC

```
uh this patch is nice and all but i feel like it'd be better if it included
restructuring.dm
```

### Comment 6: commenter 22, 2008-08-07 00:35 UTC

```
yeah weasello >:(
```

### Comment 7: commenter 2, 2008-08-07 18:20 UTC

```
I'm working on it god >:(
```

### Comment 8: commenter 2, 2008-08-14 03:31 UTC

*(no text)*

- Attachment [restructuring.dm](attachments/29_-6951543545368400166_restructuring.dm), 2,854 bytes

### Comment 9: commenter 22, 2008-08-15 12:23 UTC

```
and now it's ready to play woohoo
```

- Attachment [restructuring.dm](attachments/29_2274836518724198776_restructuring.dm), 3,010 bytes

### Comment 10: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
