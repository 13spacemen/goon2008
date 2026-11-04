# Issue 38: Overcharge APC Batteries

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Branch-Kelson, Phase-Kelson-1, Revision568 |
| Stars | 0 |
| Opened | 2008-05-22 13:58 UTC |
| Last comment | 2008-10-09 02:14 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/38 |

## Related SVN revisions

Commits whose log message cites this issue:

- r568, 2008-10-09, kelson, `827f4b0b8` on `/branches/kelson/unstable`: Issue 38: Overcharging APC Batteries

Revisions named by the issue's `Revision` labels:

- r568, 2008-10-09, kelson, `827f4b0b8` on `/branches/kelson/unstable`: Issue 38: Overcharging APC Batteries

## Comments

### Comment 0: commenter 2, 2008-05-22 13:58 UTC

```
It would be neat if you could overcharge batteries (hook them into a
generator or something) so that when someone pops it into an APC terminal
it fries all the room 'lectronics. Perhaps permanently? Or fixable with
some tool?

It would be a complicated enough process to not be abused by griefers. It's
already hard enough to get the batteries out.
```

### Comment 1: commenter 1, 2008-07-10 18:51 UTC

*(no text)*

### Comment 2: commenter 24, 2008-08-23 18:02 UTC

*(no text)*

### Comment 3: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 4: commenter 24, 2008-08-31 17:26 UTC

```
Relevant Changes:
- add recharge, discharge, and explode to power cells
- APCs and cell_chargers now use recharge to charge their cells
- overloading cells with excess charge will cause them to explode
- overloading an APC cell with excess charge will cause it to break
```

- Attachment [electrical surge v1.patch](attachments/38_-7772226595231900959_electrical%20surge%20v1.patch), 21,281 bytes

### Comment 5: commenter 24, 2008-09-28 19:57 UTC

```
Relevant Changes:
- updated interface to powercell instantiation
- draining over 20% power at once shorts powercells
- recharing over 25% power at once causes power discharge
- surges must exceed 1% of current charge to short powercells
- fixed bug related to rebooting causing instantiation failure
```

- Attachment [electrical surge v2.patch](attachments/38_8909711348477657062_electrical%20surge%20v2.patch), 25,170 bytes

### Comment 6: commenter 24, 2008-09-28 20:05 UTC

```
Future Update:
- manual control cites Wattage to allow matching current drain more easily
- enhanced interface (working on a "standard interface" menu at the moment)
- manual control with automatic shutoff, overcharge warnings, surge delays
```

### Comment 7: commenter 22, 2008-09-30 18:15 UTC

```
Recommend finding a way to fix APC's before going headfirst into more ways of 
breaking them.

Fuck flashlights >: (
```

### Comment 8: commenter 22, 2008-09-30 18:17 UTC

```
In addition does all of this work with the 75,000/50,000 cells the 
teleporter/experimental engine use in the latest version of my map?

I would port it to unstable and upload it but I don't have internet due to hurricane 
ike- It's at http://www.drop.io/persh005/media under publicstable.7z if you want to 
do it Kelson :)
```

### Comment 9: commenter 24, 2008-10-09 02:14 UTC

```
Relevant Changes:
- cell_charger automatically stops charging cells
- cell_charger now takes an argument for charge_rate (default 5)

Committed in rev 568
```

- Attachment [electrical surge v3.patch](attachments/38_-749814671553385757_electrical%20surge%20v3.patch), 29,117 bytes
