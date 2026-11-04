# Issue 192: more things responding to radio signals

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-11 18:36 UTC |
| Last comment | 2008-07-21 20:31 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/192 |

## Comments

### Comment 0: commenter 1, 2008-07-11 18:36 UTC

```
apart from just airlocks:

remotely opened valves (valve + screwdriver + screwdrivered radio assembly,
screwdriver closes and it's unnoticable)
remotely opened tanks (same)
remotely pulled fire alarms (trigger or reset)

other ideas?
```

### Comment 1: commenter 25, 2008-07-11 21:35 UTC

```
The mass driver, to immediately fire.
```

### Comment 2: commenter 25, 2008-07-18 13:51 UTC

```
Kurper, can you shorten the option to attach a signaler from "Attach signaler" or
whatever it is, to a letter, maybe? Right now it looks like on the menu:
cut | pulse | attach signaler
Just seems kind of awkward to me, to use the cut/pulse options.
How about making it something like
cut | pulse    | AS
?

```

### Comment 3: commenter 1, 2008-07-18 14:55 UTC

```
AS is silly, but if it's expanded to make timers and things work with it too, I could
just make it "attach." Not a major priority, incredibly enough.
```

### Comment 4: commenter 11, 2008-07-20 04:06 UTC

```
generalized the wire code so we can extend it to more items, made wire bundles able
to accept anything under /obj/item/weapon that sends r_signal (currently timer/radio
signaller/prox and infra sensors)

new /datum/assembly/wirebundle supports up to 24 wires (and yes we can add more if we
need to) so we can extend this to atmos sensors and fire panels (I'm thinking instead
of these devices sensing immediately near them, we can add remote fire/atmos sensor
objects that have a hidden/virtual wire (read: it only exists at either end for
wirecutting) from the sensor to the panel so you can cut sensors, or cut the whole
panel's power (update alarms to look for dead panels maybe?). or if you're really
nefarious and we add a semi-automated fire extinguishing system (fire alarm == auto
trigger CO2 dump in area), hook your remote signaller/timer up to the remote dump
controls and watch the fun as the area gets sealed off and gassed.

Oh and the best part of the patch is that it adds var/assmaster (assembly master) to
obj/item/weapon :3
```

- Attachment [wirebundles.unstable.patch](attachments/192_5772565881863670528_wirebundles.unstable.patch), 19,414 bytes

### Comment 5: commenter 11, 2008-07-21 04:15 UTC

```
updated with new colors (and against the latest SVN)
```

- Attachment [wirebundles.unstable.patch](attachments/192_-4434605713271760740_wirebundles.unstable.patch), 19,914 bytes

### Comment 6: commenter 1, 2008-07-21 20:31 UTC

*(no text)*
