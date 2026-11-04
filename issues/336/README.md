# Issue 336: Features / Updates Submission

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Enhancement, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2009-04-04 01:17 UTC |
| Last comment | 2009-04-21 21:40 UTC |
| Comments | 17 |
| Archive page | https://code.google.com/archive/p/ss13/issues/336 |

## Comments

### Comment 0: commenter 58, 2009-04-04 01:17 UTC

```
Two features I've coded on my own that I'd like to submit for 
consideration:


====New Features

Gas Monitor: Essentially an engine control terminal, minus the ejection 
logic:

Power Relay: I've eliminated all the bugs I could find, this is essentially 
a 'diode' of sorts for power.

====Updates

Power Monitor: Adds display of power relays in addition to APCs



all code is in attached file
```

- Attachment [Newcode.dm](attachments/336_3486740155570775614_Newcode.dm), 9,875 bytes

### Comment 1: commenter 58, 2009-04-04 01:18 UTC

```
Forgot to mention in original report that code was based off Persh Stable, downloaded 
March 31st
```

### Comment 2: commenter 58, 2009-04-04 06:33 UTC

```
Updated again, this time in a format that doesn't suck.
```

- Attachment [NewFeaturesPatch1.patch](attachments/336_5175843398947097428_NewFeaturesPatch1.patch), 11,913 bytes

### Comment 3: commenter 22, 2009-04-08 11:38 UTC

```
I'll look at this later today, but the 'active' goon version is closed source right now.
```

### Comment 4: commenter 22, 2009-04-08 22:11 UTC

```
Implemented in Persh stable
```

### Comment 5: commenter 22, 2009-04-11 06:44 UTC

```
You should probably include an icon
```

### Comment 6: commenter 58, 2009-04-11 07:20 UTC

```
I could make one, but I just made a horrible APC edit.  Here's a patch for power.dmi 
made from the latest SVN anyways.  hopefully it'll work, if not I've included the 
full file, just look for termrec and termrec-op[0/1/3]

```

- Attachment [termrec-icon.patch](attachments/336_-5349916365352792954_termrec-icon.patch), 176 bytes
- Attachment [power.dmi](attachments/336_-4471687239634791219_power.dmi), 10,291 bytes

### Comment 7: commenter 22, 2009-04-19 09:19 UTC

```
Curious you submit things to this version of ss13 as opposed to the slightly more
(but not necessarily well thought out) feature filled stuntwaffle ss13.
```

### Comment 8: commenter 22, 2009-04-19 09:33 UTC

```
So is it supposed to be an APC or something more like an SMES? if the former it
should probably use the dir system APC's use, if the latter it should probably have
an SMES-like icon. A map maker probably wouldn't know where the wire for the devices
output would be either.. Whereas an SMES shows input goes to the terminal, and output
from the SMES.
```

### Comment 9: commenter 59, 2009-04-19 17:59 UTC

```
I don't know where the stuntwaffle stable is, so I contribute where I can.  Anyways, 
the system I use is I just wire up the reciever's output like you'd wire up an APC's 
supply, and then use a terminal to power it like a SMES.  Not too well thought-out 
I'll admit, but I can go back and change this to work like a SMES (plus have a new 
icon that doesn't suck) anytime, if you'd prefer.
```

### Comment 10: commenter 58, 2009-04-19 18:19 UTC

```
..Whoops, Signed in on the wrong account and didn't even notice.
```

### Comment 11: commenter 22, 2009-04-19 18:39 UTC

```
An SMES icon might look better, since you have to place the terminal manually (As
with an SMES)
```

### Comment 12: commenter 58, 2009-04-19 18:56 UTC

```
That would work.  I avoided using a SMES icon simply to avoid any confusion, but if 
that's what would work better I can go back and make a couple overlays for the SMES 
icon that would work as icons for the termrec.
```

### Comment 13: commenter 22, 2009-04-19 18:59 UTC

```
It could be a different icon altogether, but with the way it uses a terminal an apc
icon would probably only confuse.. Unless it was changed to use the apc dir variable.
```

### Comment 14: commenter 58, 2009-04-19 19:07 UTC

```
Yeah, that would only cause more confusion, since normally you don't need to connect 
up a second output cable to an APC in order to power anything.  Working on the icon 
right now.
```

### Comment 15: commenter 58, 2009-04-20 04:56 UTC

```
Okay, did up some graphics.  I'm not sure my graphical style fits well with the SS13 
style, but here's an updated power.dmi with the termrec and termrec-op* icons 
changed.
```

- Attachment [power.dmi](attachments/336_4821634575770182058_power.dmi), 11,509 bytes

### Comment 16: commenter 22, 2009-04-21 21:40 UTC

```
committed
```
