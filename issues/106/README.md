# Issue 106: AI alerts on fire alarms, oxygen alarms, power outages

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-15 03:41 UTC |
| Last comment | 2008-06-20 23:10 UTC |
| Comments | 16 |
| Archive page | https://code.google.com/archive/p/ss13/issues/106 |

## Comments

### Comment 0: commenter 1, 2008-06-15 03:41 UTC

```
When a fire alarm or air alarm is triggered, or a room has no power for 30
seconds continuously, the AI should get a little notification. This'd make
it easier to be AI without making the traitor's job too hard.
```

### Comment 1: commenter 1, 2008-06-15 11:30 UTC

*(no text)*

### Comment 2: commenter 11, 2008-06-18 03:10 UTC

```
Here's milestone #1 of this patch- skeleton implementation of the alarm system using
motion sensed areas (currently eva storage, secure storage, and emergency stores).
This patch implements a new area (/area/ai_monitored) and these areas are moved into
subclasses of this. It also implements a new security camera (camera/motion) that
performs the tracking of targets in the area. After 300 game ticks if there's still
motion in the area it will trigger an alarm to the AI which has a clickable camera
link, and also will show up in an alarm panel if the AI chooses to have it up.

ToDo:
Implement other alarms (framework is there, should be trivial to add)- Fire/Air/Power.
Extend camera/motion/attackby to require an attack with another item (such as
screwdriver/crowbar) before you can wirecut the camera and supress alarms.
Fix it so a broken (wirecut) camera will not send alarms.

Anyhow, I've attached the patch for critique and an initial taste of the final concept.
```

- Attachment [aialert.patch](attachments/106_-5670292618485100887_aialert.patch), 37,547 bytes

### Comment 3: commenter 11, 2008-06-19 00:05 UTC

```
milestone #2

adds fire/power/atmos alerts
```

- Attachment [aialerts2.patch](attachments/106_4733396698774674270_aialerts2.patch), 42,045 bytes

### Comment 4: commenter 11, 2008-06-19 23:55 UTC

```
rest of the changes- displaying lists of cameras everywhere, and 
allowing cameras to being passed in as lists

for camera/power/atmos alarms, all cameras in area are passed as a list
to the alarm

also makes some changes to the map to get rid of redundant APCs
```

- Attachment [aialerts3.patch](attachments/106_462391325293759367_aialerts3.patch), 46,105 bytes

### Comment 5: commenter 1, 2008-06-20 00:47 UTC

```
uh yeah these are git patch files not svn ones, nice try smart guy but try again.
```

### Comment 6: commenter 11, 2008-06-20 01:38 UTC

```
svn version of patch (hopefully)

alters mapfile (changing camera classes, removes redundant APCs)
also alters the txt files since I can't get svn:ignore to work
```

- Attachment [aialarms.svn.patch](attachments/106_-1609271584986683142_aialarms.svn.patch), 45,367 bytes

### Comment 7: commenter 11, 2008-06-20 03:00 UTC

```
new svn patch which should hopefully apply clean
```

- Attachment [aialarms.svn.patch](attachments/106_-7938296361264642488_aialarms.svn.patch), 10,814 bytes

### Comment 8: commenter 1, 2008-06-20 13:45 UTC

```
It looks like this needs an areas/ai_monitored.dm, which that patch doesn't include.
Try again?
```

### Comment 9: commenter 15, 2008-06-20 14:08 UTC

```
Comment deleted
```

- Attachment adminauth.svn.patch, 2,065 bytes: **not recovered**

### Comment 10: commenter 15, 2008-06-20 14:19 UTC

```
Comment deleted
```

- Attachment aialarms.svn.patch, 10,814 bytes: **not recovered**

### Comment 11: commenter 15, 2008-06-20 14:24 UTC

```
Comment deleted
```

- Attachment aialarms.svn.patch, 12,799 bytes: **not recovered**

### Comment 12: commenter 15, 2008-06-20 14:41 UTC

```
applied 'clean' (some fuzz/offset) against 189:

$ patch -p0 < ../../aialarms.svn.patch 
patching file 'maps/Space Station 13.dmp'
patching file 'maps/Space Station 13 areas.dm'
patching file mode.txt
patching file config.txt
patching file InSpace.dme
Hunk #1 succeeded at 97 with fuzz 2 (offset 7 lines).
patching file code/atoms.dm
patching file code/game/camera.dm
patching file code/game/power.dm
patching file code/game/computer.dm
patching file code/game/airtunnel.dm
Hunk #1 succeeded at 647 (offset 25 lines).
Hunk #2 succeeded at 657 (offset 25 lines).
Hunk #3 succeeded at 664 (offset 25 lines).
patching file code/game/area/ai_monitored.dm
patching file code/game/mob.dm
Hunk #1 succeeded at 1961 (offset 2 lines).
Hunk #2 succeeded at 5962 (offset 2 lines).
Hunk #3 succeeded at 6925 (offset 2 lines).
patching file code/game/demo.dm
patching file code/game/areas.dm
```

- Attachment [aialarms.svn.patch](attachments/106_-6057002272294564602_aialarms.svn.patch), 41,355 bytes

### Comment 13: commenter 11, 2008-06-20 18:50 UTC

```
$ patch -p0 < ../../aialarms.svn.patch 
patching file 'maps/Space Station 13.dmp'
patching file 'maps/Space Station 13 areas.dm'
patching file mode.txt
patching file config.txt
patching file InSpace.dme
Hunk #1 succeeded at 97 with fuzz 2 (offset 7 lines).
patching file code/atoms.dm
patching file code/game/camera.dm
patching file code/game/power.dm
patching file code/game/computer.dm
patching file code/game/airtunnel.dm
Hunk #1 succeeded at 647 (offset 25 lines).
Hunk #2 succeeded at 656 (offset 25 lines).
patching file code/game/area/ai_monitored.dm
patching file code/game/mob.dm
Hunk #1 succeeded at 1961 (offset 2 lines).
Hunk #2 succeeded at 5962 (offset 2 lines).
Hunk #3 succeeded at 6925 (offset 2 lines).
patching file code/game/demo.dm
patching file code/game/areas.dm
```

- Attachment [aialarms.svn.patch](attachments/106_-9182506841844155509_aialarms.svn.patch), 42,294 bytes

### Comment 14: commenter 11, 2008-06-20 22:26 UTC

```
$ svn up
At revision 194.

$ patch -p0 < ../../aialarms.svn.patch 
patching file 'maps/Space Station 13.dmp'
patching file 'maps/Space Station 13 areas.dm'
patching file mode.txt
patching file config.txt
patching file InSpace.dme
Hunk #1 succeeded at 91 with fuzz 2 (offset 1 line).
patching file code/atoms.dm
patching file code/game/camera.dm
patching file code/game/power.dm
patching file code/game/computer.dm
patching file code/game/airtunnel.dm
Hunk #1 succeeded at 647 (offset 25 lines).
Hunk #2 succeeded at 656 (offset 25 lines).
patching file code/game/area/ai_monitored.dm
patching file code/game/mob.dm
Hunk #1 succeeded at 1961 (offset 2 lines).
Hunk #2 succeeded at 5946 (offset 2 lines).
Hunk #3 succeeded at 5964 (offset 2 lines).
Hunk #4 succeeded at 6927 (offset 2 lines).
patching file code/game/demo.dm
patching file code/game/areas.dm

fixes bouncing alarms, adds "how many alarms in the zone" for things like APC and
Atmos alarms, also auto-refreshes the alerts page (if you're watching it) when new
alarms come in, and old alarms go out.
```

- Attachment [aialarms.svn.patch](attachments/106_7183524502958481584_aialarms.svn.patch), 43,191 bytes

### Comment 15: commenter 1, 2008-06-20 23:10 UTC

*(no text)*
