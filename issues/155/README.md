# Issue 155: Can Filling and Digital Valves

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-29 00:00 UTC |
| Last comment | 2008-06-29 17:35 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/155 |

## Comments

### Comment 0: commenter 2, 2008-06-29 00:00 UTC

```
This will totally not work with Kurper's unstable fork but should be fairly
easily retrofitted. Compiled and tested ok with Kurpers Stable fork.

 - Changes cannisters (all types - air, poison, n2, co2 etc)'s fillrate to
be based off of the maximum value in the map, instead of hardcoded numbers.
Now it is possible to make superbig capacity cans just by making a new
instance, instead of having to code a whole new object. This will not break
old maps (but pretty much every can will now hold more by default, as the
value in the code differed from the default maximum)

 - Adds a new &quot;Digital Valve.&quot; This valve works identically to the old one
except the AI can control it. Currently no way to disconnect or disable it,
but disconnecting/disabling the AI cameras nearby will prevent it from
using them.

 - Adds new Digital Valve icons to the pipes.dmi file (includes animations
and such too)
```

- Attachment [pipes.dmi](attachments/155_-6981220404425959779_pipes.dmi), 13,859 bytes
- Attachment [dvalves.patch](attachments/155_-4110759776995336509_dvalves.patch), 7,402 bytes

### Comment 1: commenter 2, 2008-06-29 00:10 UTC

```
Apparantly a few changes were made by Persh to atoms.dm as well, that includes black
firesuit and heavy armor, so they can be added to the map.
```

### Comment 2: commenter 2, 2008-06-29 00:43 UTC

```
Changelog that gets us up to date
```

- Attachment [changelog.patch](attachments/155_5932041473966939125_changelog.patch), 1,580 bytes

### Comment 3: commenter 2, 2008-06-29 17:30 UTC

```
Here's the patch (sans changelog) for the /unstable fork. It does things a little
nicer but breaks old maps.

(it moves /obj/machinery/valves to /obj/machinery/valves/mvalve for manual and
/dvalve for digital, so that both can share code nicely).

A quick search and replace in your map file should do the trick.

Also adds black firesuit, heavy armour, and does the cannister maximum value fix.
```

- Attachment [dvalves_unstable.patch](attachments/155_1168850543598595242_dvalves_unstable.patch), 4,684 bytes

### Comment 4: commenter 1, 2008-06-29 17:35 UTC

*(no text)*
