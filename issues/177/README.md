# Issue 177: Gas Diffusion

| Field | Value |
|---|---|
| Status | Started |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-04 17:47 UTC |
| Last comment | 2008-08-29 02:26 UTC |
| Comments | 25 |
| Archive page | https://code.google.com/archive/p/ss13/issues/177 |

## Comments

### Comment 0: commenter 24, 2008-07-04 17:47 UTC

```
Heat is not preserved during gas exchange; no matter how much is
transferred, the destination is set to the average temperature of both
gasses. This can raise or lower the temperature significantly by exchanging
even one unit of gas.

Expected Behavior:
Temperature change is proportional to temperature difference and amount
transferred
```

### Comment 1: commenter 24, 2008-07-05 00:07 UTC

```
Rewrote a lot of code, this is just an intermediary patch, please don't apply it
outside testing. The most wide-spread changes are in the chemical.dm file, though
almost all source files are touched due to redefinition of /turf (gasses are no
longer seperately stored, they are incorporated an /obj/substance/gas object called
'atmo')
```

- Attachment [updated gas code.patch](attachments/177_-3082597399299904453_updated%20gas%20code.patch), 103,474 bytes

### Comment 2: commenter 24, 2008-07-05 12:11 UTC

```
Modified how much air /mob/carbon/proc/get_breathed_air(turf/T) snags

Proc used to pull frac_air_taken * T.total_gas, now pulls oxygen_needed * T.total_gas
/ T.oxygen (ie, the amount of oxygen required times the number of gas units for one
unit of oxygen). Also modified how much air is taken from T when on internals - used
to always take some, now only takes if not enough oxygen and the person can breath more.

Simulated the previous damage-based reductions in breathing by lowering the
oxygen_needed and max_air_breathed
```

### Comment 3: commenter 24, 2008-07-05 12:32 UTC

```
Minor change: /mob/carbon/proc/aircheck only uses 70% of available oxygen

Changed damage-based reduction in breathing: now only max_air_breathed is lowered. At
45% (within 25 hp of dying), people will breath 61 of their required 67 units of
oxygen (with a 21% oxy atmospheere) leading to suffocation. Breathing a higher
distribution of oxygen (22.9%) will prevent this damage. 

To recap, an unharmed person can stand an oxygen percent as low as 10.4% without ill
effects. A somewhat hurt person can needs at least 18.8% oxygen and a badly hurt
person needs at least 22.9% oxygen.
```

### Comment 4: commenter 24, 2008-07-05 12:39 UTC

```
Correction: Unharmed people can stand an oxygen percent as low as 14.74% (not 10.4%)
```

### Comment 5: commenter 24, 2008-07-05 16:01 UTC

```
Patch with all current changes, causes map to load without any objects except player.
Tracking down reason, but won't finish today.
```

- Attachment [gas diffusion.patch](attachments/177_-7465977472239142845_gas%20diffusion.patch), 122,456 bytes

### Comment 6: commenter 2, 2008-07-06 06:50 UTC

```
This is a wicked series of patches. Hats off to you Kelson.
```

### Comment 7: commenter 24, 2008-07-06 16:16 UTC

```
Ran into some problems getting /turf/New to work with gas as an obj, so the following
patch converts it to a /datum
```

- Attachment [gas_datum.patch](attachments/177_-2423318305145467510_gas_datum.patch), 20,420 bytes

### Comment 8: commenter 24, 2008-07-06 17:02 UTC

```
Beta patch attached

Major changes:
/obj/substance/gas now /datum/substance/gas (has no location)
/turf and /atom/move gasses are tracked via /datum/substance/gas objects
breathing code updated for humaans to try to get at least 67 units of oxygen
many bug fixes and system tweaks, still not complete
unlike previous patch, doesn't break the map
```

- Attachment [gas_diffusion_beta.patch](attachments/177_-1125041111434979408_gas_diffusion_beta.patch), 159,380 bytes

### Comment 9: commenter 24, 2008-07-07 00:06 UTC

```
Comment deleted
```

- Attachment gas_diffusion_beta_v2.patch, 177,587 bytes: **not recovered**

### Comment 10: commenter 24, 2008-07-11 00:26 UTC

```
Everything works! Few optimizations at this point, little change from user
perspective except plasma disappears far slower leading to very long lasting and high
temperature fires.
```

- Attachment [gas_diffusion_beta_v3.patch](attachments/177_-8618434152004260634_gas_diffusion_beta_v3.patch), 179,946 bytes

### Comment 11: commenter 24, 2008-07-14 01:35 UTC

```
Last set of structural rewrites (hopefully) - removed updatelinks/buildlinks and
several other minor optimizations. Biggest improvements are from the maintainability
perspective (despite C/C++ syntax) - /obj/move and /turf now use the same functions
for gas diffusion and burning stuff. Removed link[dir], air[dir], cond[dir] variables
from /turf (no longer useful due to removal of updatelinks). Plasma does not
disappear like it does in non-patched unstable, so fires will last longer. Next
series of patches is addressing this (fires will be chemical reactions more than pure
magic)

PLEASE TROUBLESHOOT! It is very hard to ensure the code behaves (near) identically to
previous versions; any help would be appreciated :)
```

- Attachment [gas_diffusion_beta_v4.patch](attachments/177_-3755846154101572722_gas_diffusion_beta_v4.patch), 187,205 bytes

### Comment 12: commenter 24, 2008-07-19 19:56 UTC

```
Latest update to the now committed gas patch (revision 450)
Miniscule changes to UpdateGasses (firelevel before chemical reactions before fire)
Tank release generalized via copy_gas ( no more gas.oxygen, gas.nitrogen, etc )
Re-inserted check for floor-level during pipe conduction (woops)

```

- Attachment [gas diffusion v5.patch](attachments/177_-7242205955550956653_gas%20diffusion%20v5.patch), 14,553 bytes

### Comment 13: commenter 24, 2008-07-20 20:57 UTC

```
Comment deleted
```

- Attachment gas diffusion v6.patch, 35,396 bytes: **not recovered**

### Comment 14: commenter 24, 2008-07-20 23:34 UTC

```
Speed enhancements:
- rooms are now in equilibrium when all surrounding rooms match gas/temp
- removed gasses calling partial functions (gain_all => gain_gas => add_gas)
- miscellaneous minor optimizations (benchmark from 17s real-time to 6s)

Bug Fixes:
- station floors called custom (buggy) unburn proc (now call normal /turf/unburn)
- no more heat exchange with underfloor pipes (future enhanccement: 'insulated')
- internals no longer appear when not using mask + tank (whoops)
```

- Attachment [gas diffusion v6.patch](attachments/177_5326969648152121783_gas%20diffusion%20v6.patch), 40,833 bytes

### Comment 15: commenter 11, 2008-07-29 03:05 UTC

```
probably removed some speed enhancements

- re-added turf/updatelinks to allow turfs to re-advise themselves and neighbors of
gas movement changes (ie doors opening/closing). This will firstly advise all current
neighbors of the change, then recalc its own neighbors, and notify all the new
neighbors of the change. Kind of wasteful (may end up with some double-calls) but I
don't think it's called too often.
- fixed Diffusion and CheckAirflow procs to check for all kinds of doors (and not add
any links if the turf as a whole is dense- ie it's a closed firedoor etc)
- added 'equilibrium = 0' to reset_phase() proc, and made leak_to_turf procs call
reset_phase()
- got rid of some updatecell=0 bullshit on windoors that was preventing gases from
spreading to their turf (CheckAirflow makes sure stuff can't move through dense doors)
```

- Attachment [leakequilibrium.unstable.patch](attachments/177_-3626629867631042480_leakequilibrium.unstable.patch), 5,008 bytes

### Comment 16: commenter 1, 2008-07-29 03:33 UTC

```
applied, fixes the problems although it seems to slow things down considerably - that
might be my imagination though
```

### Comment 17: commenter 24, 2008-08-03 03:39 UTC

```
Comment deleted
```

- Attachment gas diffusion v7.patch, 47,143 bytes: **not recovered**

### Comment 18: commenter 11, 2008-08-03 15:55 UTC

```
doors opening _only update DiffuseAir of their turf_, this is horribly horribly
broken is it not? Their neighbours should all be updated so it can freely leak from
room to room? Granted the one neighbor that updates may handle the diffusion but the
rest of the turfs in the game all expect every turf to leak to every other air
connected turf so why should turfs with doors be different?
```

### Comment 19: commenter 24, 2008-08-03 17:28 UTC

```
Comment deleted
```

### Comment 20: commenter 24, 2008-08-03 17:48 UTC

```
Comment deleted
```

### Comment 21: commenter 11, 2008-08-03 18:33 UTC

```
It should check for equilibrium after the new air link is established though- as the
turfs may not be in equilibrium (and your code in UpdateGasses doesn't bother
actually comparing anything for equilibrium- it just says "oh I'm equal, and he's
equal, I can return now!")
```

### Comment 22: commenter 24, 2008-08-03 18:58 UTC

```
Relevant Changes:
- updatelinks doesn't call neighbor updates
- buildlinks calls updatelinks on itself and all neighbors
- gas code moved to gas_diffusion.dm
- analyzer color output fixed
- other minor fixes
```

- Attachment [gas diffusion v7b.patch](attachments/177_-1441638926967956808_gas%20diffusion%20v7b.patch), 44,462 bytes

### Comment 23: commenter 24, 2008-08-03 18:59 UTC

```
UpdateGasses doesn't compare gasses, but UpdateLinks does
```

### Comment 24: commenter 24, 2008-08-29 02:26 UTC

*(no text)*
