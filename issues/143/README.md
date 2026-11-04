# Issue 143: APC Changes

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-24 08:14 UTC |
| Last comment | 2008-06-29 18:28 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/143 |

## Related SVN revisions

Commits whose log message cites this issue:

- r232, 2008-06-24, kurper, `c6c255421` on `/branches/kurper/stable`: Applied weasello's APC patch - absorbs power_sink into APC, redefines cell_type, various small adjustments. THIS BREAKS OLD MAPS somewhat - 

## Comments

### Comment 0: commenter 2, 2008-06-24 08:14 UTC

```
This patch:

 - Adds new power sink attributes to the APC object (plays nice with old maps)
 - Redefines cell_type attribute (will make the old map power grid break)
 - Redefines what qualifies as a &quot;high capacity&quot; cell type
 - Removes the power_sink item previously introduced
 - Some minor comment editing and moving of a definition variable

See comments below for detailed description of changes. This also replaces
patches offered in Issue #141 and Issue #142, so don't bother with them.
```

- Attachment [apc_changes.patch](attachments/143_4244066627472324250_apc_changes.patch), 4,976 bytes

### Comment 1: commenter 2, 2008-06-24 08:18 UTC

```
Some maps that have odd/wacky setups have disproportionate power usage in
some rooms. This patch (based on Kurper's fork build #231) introduces three
attributes to the APC object (equip_consumption, environ_consumption, and
light_consumption) to artificially pump up the power usage.

This system works better than the artifical, invisible object-in-a-room
that could introduce bugs/lag/or even find an abusive workaround (such as
building a wall on the same tile as the power sink so that it stops working
properly). I have removed the /obj/machinery/power_sink item.

So that it does not break any previous maps all of these values default to
zero.

Additionally, the code originally called for two cell types, a "High capacity" and a
"normal" cell, as defined by the attribute cell_type. This affected icon
selection and (obviously) capacity.

To give the mapmakers more power (ho ho ho), I have converted the cell_type
to simply define the storage capacity.

Old maps will have to be updated;
 cell_type = 0 (start with no cell installed - this is still true)
 cell_type = 1 (should now be 1000)
 cell_type = 2 (should now be 2500) (most people just need to edit this)

You can also fill in whatever value you feel your APC should hold.

This patch also adjusts some values - definition of "high capacity" is now
> 2500 instead of > 1000 (since everyone seems to use hicap in their maps
anyway, so it should be the norm).

Also moves the CHARGERATE defined variable from the atoms.dm file to
globals.dm for easy editing (this is how fast the powercells recharge). It
defaults to 0.002 and will probably have to be adjusted soon to compensate for the
higher draws and charges these apcs can hold.
```

### Comment 2: commenter 2, 2008-06-24 08:57 UTC

```
Here is a quick update, changed the "examine" description on powercells so that now
you can see how much the hold, and also updates the changelog to boot (current as of
revision 231 and probably 232).
```

- Attachment [apc_changes.patch](attachments/143_6709937644068076183_apc_changes.patch), 10,900 bytes

### Comment 3: commenter 2, 2008-06-24 17:52 UTC

```
Further patch based on Revision 235, it:
 - Changes the order in which the APC draws and checks for power to it's battery
(should remove uneccesary flickering)
 - Removed bug where APC Cells would draw a static amount of power from the grid no
matter how much it actually drew
 - Changed the static CHARGERATE global to be a percentage-of-capacity base instead
 - Moved CHARGERATE global var to globals file for easy editing
 - Removed bug where if you add up all the room loads in the power management console
it didn't total the amount listed on the top of the window (net result is power
required to run the station has almost doubled)
```

- Attachment [apc_consumption.patch](attachments/143_2071610504524711698_apc_consumption.patch), 5,898 bytes

### Comment 4: commenter 2, 2008-06-24 17:53 UTC

```
Comment deleted
```

### Comment 5: commenter 2, 2008-06-24 17:54 UTC

```
^- Oh, if an APC is offline and in auto mode, it will only attempt to charge it's
battery if there's enough power on the grid for 10 continuous seconds (used to be 5).
Should also help with some flickering.

That patch significantly changes how much power the station uses and how quickly, and
any old map will have to be tweaked (default APCs will probably last 5-10 minutes and
even then will run on ENVIRON for another 5-10)
```

### Comment 6: commenter 2, 2008-06-29 18:00 UTC

```
And here is an /unstable fork patchfile incorporating all these changes (except no
changelog)
```

- Attachment [power_unstable.patch](attachments/143_2454106352817840284_power_unstable.patch), 11,264 bytes

### Comment 7: commenter 1, 2008-06-29 18:28 UTC

*(no text)*
