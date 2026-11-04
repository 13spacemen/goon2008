# Issue 31: Traitor radio less obvious?

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 12:50 UTC |
| Last comment | 2008-06-29 20:52 UTC |
| Comments | 14 |
| Archive page | https://code.google.com/archive/p/ss13/issues/31 |

## Comments

### Comment 0: commenter 2, 2008-05-22 12:50 UTC

```
Every job should start with a radio on the hip (if necessary) and simply
replace with a traitor radio if you are THE ONE.

Possible implementations of this: As part of the YOU ARE THE TRAITOR
message, store a SECRET CODE that the traitor can dial in to the radio to
get the command prompt.

OR make it so only the traitor can see the dialogue that pops up. I'm not
too partial to this because I like the idea of interrogating the traitor to
get the secret code.

It's really unfair that the traitor can be found out 2 minutes into the
game because of a random inspection due to security report.
```

### Comment 1: commenter 2, 2008-05-22 14:08 UTC

```
If there's some confusion:
(if necessary) == (if they don't already)
radios for everyone!
```

### Comment 2: commenter 1, 2008-05-22 17:24 UTC

```
Could also just make it something other than a radio, or have it hidden on the
station in a place only the traitor can get to (randomly determined, of course).
```

### Comment 3: commenter 2, 2008-05-22 17:33 UTC

```
Nah, the item should be covert and a radio even makes sense. Last thing you want is a
guard at each of the (5?) hidden points.
```

### Comment 4: commenter 11, 2008-06-14 22:23 UTC

```
Better traitor radio (this time generated using svn diff, although the patch will
need some fuzz in at least items.dm as I patched against my version with the camera
changes so everything below that will be off a bit).

Basically:
- as the traitor, you are no longer given a syndicate uplink when it hands out items
- instead of handing you yet another radio, it scans through:
  - headset
  - belt
  - backpack
  - storage in either hand (backpacks and toolboxes, doesn't currently look to see if
you're holding a radio)
  and upon finding one of these items, it 'hides' a syndicate uplink inside. as an
added bonus for the traitor the syndicate uplink looks exactly like the radio it's
been hidden inside, so it's kind of like you use the code to turn on/off the
syndicate radio features.
- now i just mentioned a code, when it gives you the radio it also gives you a radio
freq, which when dialled in will 'transform' the radio into the disguised syndicate
uplink, once it's in the uplink form you can give yourself an item then hit 'lock' to
disguise it back as a regular radio- however it can still be unlocked using the code.
- also uses the memory verb to store a memory of the code, and what location the
radio was found in

possible changes/enhancements:
- scan more places for radios (check for radio direct in hand, or in pockets?)
- instead of bailing out at the first radio found, maybe insert them into a list and
randomize which one is picked
```

- Attachment [bettertraitorradio.isno.patch](attachments/31_2019477288373383725_bettertraitorradio.isno.patch), 7,749 bytes

### Comment 5: commenter 1, 2008-06-15 12:00 UTC

```
Why is there a "while (1)" in the radio creating code? It doesn't seem to do anything
at all, since you break unconditionally at the end of the loop and there aren't any
continues or conditional breaks out of the main loop.
```

### Comment 6: commenter 11, 2008-06-15 15:24 UTC

```
oh, that was from an older revision of the code. should be safe to remove now.
```

### Comment 7: commenter 13, 2008-06-16 01:04 UTC

```
Why not change it to the RSB?  Everyone starts with an RSB, and have the syndicate 
menu only open up for a certain frequency/code combo (which the traitor will have in 
his memory).
```

### Comment 8: commenter 11, 2008-06-16 03:55 UTC

```
This patch will do that, if it doesn't find another radio before it gets to the RSB.
It'll even disguise itself as the RSB (or as your headset). I think altering my patch
to be random would be the best way to go though since people start with at least
headset+rsb, and anyone with a toolbox starts with an sbr, it'd be 50/50 - 33/33/33
randomized everytime.
```

### Comment 9: commenter 1, 2008-06-16 04:40 UTC

```
Not everyone will necessarily start with an RSB - my "people spawn with their
equipment" patch gives security tasers on their belts, etc.
```

### Comment 10: commenter 11, 2008-06-20 03:09 UTC

```
new svn patch
```

- Attachment [bettertraitorradio.svn.patch](attachments/31_-4878322267302628001_bettertraitorradio.svn.patch), 7,749 bytes

### Comment 11: commenter 1, 2008-06-20 13:56 UTC

```
applied
```

### Comment 12: commenter 2, 2008-06-29 19:28 UTC

```
When add_memory is called it pops up the memory window, thus negating the need to
spam the chat window with your traitor information.

Hm, can we adjust this patch so that it uses the add_memory proc, and removes the
chatspam?

As far as I can tell the add_memory verb isn't used right now, the traitor
information is just appended directly into the memory.
```

### Comment 13: commenter 1, 2008-06-29 20:52 UTC

```
What? No! Keep the chatspam.
```
