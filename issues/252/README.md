# Issue 252: General bugfix/cleanup dump

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Defect, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-02 21:08 UTC |
| Last comment | 2008-08-31 21:15 UTC |
| Comments | 27 |
| Archive page | https://code.google.com/archive/p/ss13/issues/252 |

## Related SVN revisions

Commits whose log message cites this issue:

- r547, 2008-08-16, kelson, `2891a60e6` on `/branches/kelson/unstable`: Issue 252: Patches 8 &amp; 10
- r564, 2008-08-29, kelson, `a2ed2f4b3` on `/branches/kelson/unstable`: Issue 252: General Cleanup - cleaned drag.dm, items.dm
- r566, 2008-08-31, kelson, `e9bbad540` on `/branches/kelson/unstable`: Issue 252:12: Code cleanup in /mob/carbon/movement.dm

## Comments

### Comment 0: commenter 24, 2008-08-02 21:08 UTC

```
This issue addresses non-specific code cleanup and minor bugfixes
```

### Comment 1: commenter 24, 2008-08-02 21:12 UTC

```
Cleanup: Atoms.dm: /atom/moveable/Move(NewLoc, direct)
Suggest: Update code to avoid blocking northeast if north open and east isn't
```

- Attachment [1.patch](attachments/252_4237591623729929398_1.patch), 1,592 bytes

### Comment 2: commenter 11, 2008-08-02 21:20 UTC

```
Looks like it already does this in your new code since it flows through?

+	if(direct & NORTH)
+		if(step(src,NORTH))
+			if(direct & EAST)	step(src,EAST)
+			if(direct & WEST)	step(src,WEST)
+			return 1
...
+	if(direct & EAST)
+		if(step(src,EAST))
+			if(direct & NORTH)	step(src,NORTH)
+			if(direct & SOUTH)	step(src,SOUTH)
+			return 1

the 2nd code block will execute if the first one fails to, with the first trying N
then E, and the 2nd trying E then N
```

### Comment 3: commenter 11, 2008-08-02 21:23 UTC

```
Comment deleted
```

### Comment 4: commenter 1, 2008-08-02 21:30 UTC

```
the step function has side effects, so im fairly sure that code does not in fact work
properly in all situations (if the direction is northeast, it could end up going
north->east->north, for instance)
```

### Comment 5: commenter 24, 2008-08-02 23:44 UTC

```
Neg Maddi - if it steps north, but can't step east, then you won't move NE. May have
been able to travel east then north, however - that isn't checked (maintaining
consistency with original code). If we wanted to change that ability, we could use
either a temp dummy or can/get_steps.

Kurper, that is consistent with the original function.
```

### Comment 6: commenter 11, 2008-08-02 23:51 UTC

```
a generic 'TryEnter' or something proc may be required (unless it's already present
in the 'CheckEnter' stuff).

We may have to do what OpenSS13 did and split most of /atom/DblClick out into it's
own function and try to make it generic enough that it can check if small objects can
move, and it large dense objects can move (since right now it just checks "can I
reach this?" using a dummy object that has flags|=TABLEPASS
```

### Comment 7: commenter 24, 2008-08-02 23:54 UTC

```
Comment deleted
```

- Attachment 2.patch, 599 bytes: **not recovered**

### Comment 8: commenter 24, 2008-08-03 00:24 UTC

```
Minor Bugfix: bad comparison in alert/process led to all sensors alerting
```

- Attachment [3.patch](attachments/252_-5444981988175258446_3.patch), 529 bytes

### Comment 9: commenter 24, 2008-08-03 00:35 UTC

```
Minor Enhancement: Allows AI to use Move anytime (current camera not required)
```

- Attachment [4.patch](attachments/252_-4613768310204301915_4.patch), 972 bytes

### Comment 10: commenter 24, 2008-08-03 00:46 UTC

```
Minor Change: INFINITY = 1e99 now declared in globals.dm (= to 1.#INF at 1e30 though)
```

- Attachment [5.patch](attachments/252_954023862817372196_5.patch), 803 bytes

### Comment 11: commenter 24, 2008-08-03 00:50 UTC

```
Minor Change: /atom/movable/Move moved to atoms.dm with similar code
```

- Attachment [6.patch](attachments/252_-7527112621182503345_6.patch), 1,480 bytes

### Comment 12: commenter 24, 2008-08-03 04:05 UTC

```
Minor Change: Adds smoke when computers are hit

Re: Movement - If we're interested in changing that, I suggest a new issue for it
```

- Attachment [2.patch](attachments/252_5127266549913676437_2.patch), 599 bytes

### Comment 13: commenter 24, 2008-08-03 13:28 UTC

```
Minor Changes: Helpers.dm: shuffle now uses pick (instead of random), findname now
returns the /mob instead of 1 (although nothing uses it), centertext now uses
add_lspace (instead of replicating functionality), removed redundant returns
```

- Attachment [7.patch](attachments/252_2545941292278280420_7.patch), 6,339 bytes

### Comment 14: commenter 24, 2008-08-03 13:49 UTC

```
Minor Enhancement: datumvars.dm now /admin/admin_powers/debug.dm, host given access
to /proc/delete in non-sandbox modes (be careful, lots of code makes bad assumptions
about things existing)
```

- Attachment [8.patch](attachments/252_7995942019013666336_8.patch), 7,653 bytes

### Comment 15: commenter 24, 2008-08-03 16:05 UTC

```
Minor Change: appended /game/sun.dm to /atom/sun.dm, updated directional names
Suggest: Changing solar code as it requires too much babysitting at present
```

- Attachment [9.patch](attachments/252_2974925644404588757_9.patch), 4,612 bytes

### Comment 16: commenter 11, 2008-08-03 16:08 UTC

```
Suggest: Changing solar code as it requires too much babysitting at present

Tracked under issue #197
```

### Comment 17: commenter 24, 2008-08-06 09:10 UTC

```
Random TODO:
- shuttle still counts as space (try throwing an object)
- gases still created when placing a tile in space (in some cases)
- AI can still control most of the station after 'hardline' cut
- closing a closet on a siphon stops it from operating
```

### Comment 18: commenter 1, 2008-08-06 20:54 UTC

```
I don't want the host able to delete stuff in non-sandbox modes, the UNIX-y model of
"assume that the host knows what they're doing" is not even remotely applicable to
SS13. I want to reduce the potential for admin abuse, not increase it.
```

### Comment 19: commenter 1, 2008-08-06 21:01 UTC

```
all of these but #8 are now applied
```

### Comment 20: commenter 24, 2008-08-12 05:05 UTC

```
I've been looking at the issue more from the other side; what commands would make the
admin's job easier. The other day an admin spawned an object in an "illegal" location
which required a restart to fix since no one could remove it. This isn't to excuse
the admin's mistake (de-admined now), but just an example of current power
limitations. I think limiting the command to the host pre-empts most abuse - after
all, he can "delete" all objects by just shutting down the game.
```

### Comment 21: commenter 1, 2008-08-12 19:43 UTC

```
that might not be a good idea, it'd be good for abakahn/ratama/evarr to be able to
spawn things for game modes, but i wouldnt want him able to permaban people probably
```

### Comment 22: commenter 24, 2008-08-14 03:03 UTC

```
Minor Bugfix: Assistants no longer spawn at null if no space is available in
area/arrival/start (instead /mob/carbon/New() retries for 5 minutes then aborts)
```

- Attachment [10.patch](attachments/252_223305322104829619_10.patch), 1,121 bytes

### Comment 23: commenter 24, 2008-08-16 18:17 UTC

```
Patches 8 & 10 applied
```

### Comment 24: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 25: commenter 24, 2008-08-29 22:42 UTC

```
Code cleanup of drag.dm and items.dm; committed as attached to rev 564
```

- Attachment [11.patch](attachments/252_-8329705438276662558_11.patch), 12,340 bytes

### Comment 26: commenter 24, 2008-08-31 21:15 UTC

```
Code cleanup of /mob/carbon/movement.dm; committed as attached to rev 566
- primarily removed redundant function calls and terrible program flow
- added log_bug command to logging.dm (logs to "BUG: [text]")
- removed pointless and confusing debug message
```

- Attachment [12.patch](attachments/252_7437906555207405347_12.patch), 5,913 bytes
