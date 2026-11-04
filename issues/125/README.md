# Issue 125: "lockdown" AI command

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-18 15:11 UTC |
| Last comment | 2008-08-16 06:04 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/125 |

## Comments

### Comment 0: commenter 1, 2008-06-18 15:11 UTC

```
that makes all the doors and fire doors close and lock
```

### Comment 1: commenter 22, 2008-07-03 07:53 UTC

```
okay here
```

- Attachment [ai lockdown.patch](attachments/125_4645382362115251468_ai%20lockdown.patch), 1,616 bytes

### Comment 2: commenter 22, 2008-07-04 05:32 UTC

```
This one is better, only adds disable lockdown verb once lockdown is initiated
```

- Attachment [ai lockdown.patch](attachments/125_-4441735551541342845_ai%20lockdown.patch), 1,779 bytes

### Comment 3: commenter 1, 2008-07-06 16:45 UTC

```
does this actually work right yet
```

### Comment 4: commenter 22, 2008-07-08 03:45 UTC

```
the one on my server seems to work..

/mob/ai/proc/lockdown()
	set category = "AI Commands"
	set name = "Lockdown"

	if(usr.stat == 2)
		usr <<"You cannot initiate lockdown because you are dead!"
		return

	world << "\red Lockdown initiated by [usr.name]!"

	for(var/obj/machinery/firealarm/FA in world) //activate firealarms
		spawn( 0 )
			if(FA.lockdownbyai == 0)
				FA.lockdownbyai = 1
				FA.alarm()
	for(var/obj/machinery/door/airlock/AL in world) //close airlocks
		spawn( 0 )
			if(AL.canAIControl() && AL.icon_state == "door0" && AL.lockdownbyai == 0)
				AL.close()
				AL.lockdownbyai = 1
	src.verbs -= /mob/ai/proc/disablelockdown
	sleep(100)
	src.verbs += /mob/ai/proc/disablelockdown
/*	src.verbs += /mob/ai/proc/disablelockdown
	usr << "\red Disable lockdown command enabled!"
	usr << "\red Lockdown command disabled for 10 seconds!"
	src.verbs -= /mob/ai/proc/lockdown
	sleep(100)
	src.verbs += /mob/ai/proc/lockdown
*/

/mob/ai/proc/disablelockdown()
	set category = "AI Commands"
	set name = "Disable Lockdown"

	if(usr.stat == 2)
		usr <<"You cannot disable lockdown because you are dead!"
		return

	world << "\red Lockdown cancelled by [usr.name]!"

	for(var/obj/machinery/firealarm/FA in world) //deactivate firealarms
		spawn( 0 )
			if(FA.lockdownbyai == 1)
				FA.lockdownbyai = 0
				FA.reset()
	for(var/obj/machinery/door/airlock/AL in world) //open airlocks
		spawn ( 0 )
			if(AL.canAIControl() && AL.lockdownbyai == 1)
				AL.open()
				AL.lockdownbyai = 0

/*	src.verbs -= /mob/ai/proc/disablelockdown
	usr << "\red Disable lockdown command removed until lockdown initiated again!"
*/

But as you can see I have bits commented out.

Verblist seems to not update when you remove/add verbs like this, at least not always.
```

- Attachment (unnamed), 0 bytes: **not recovered**

### Comment 5: commenter 24, 2008-07-21 02:17 UTC

```
Patch adds and removes command appropriately; enables all alarms/airlocks, then puts
them back to starting conditions (off/unlocked)
```

- Attachment [ai lockdown.patch](attachments/125_-1219423562832348227_ai%20lockdown.patch), 5,322 bytes

### Comment 6: commenter 1, 2008-07-23 23:17 UTC

```
this doesn't return them to their starting conditions, it just unlocks them, which is
silly. well, actually it locks them, but i'll let that slide.
```

### Comment 7: commenter 24, 2008-08-02 19:52 UTC

```
Comment deleted
```

- Attachment ai lockdown.patch, 5,321 bytes: **not recovered**

### Comment 8: commenter 24, 2008-08-02 23:37 UTC

```
Resubmitted for version 524 and Production Ready

BYond does not update verb lists if the eye is not centered on the player. I haven't
found a good workaround yet, but the stop gap is calling cancel_camera()
```

- Attachment [ai lockdown v2.patch](attachments/125_-5802901423226969155_ai%20lockdown%20v2.patch), 8,921 bytes

### Comment 9: commenter 24, 2008-08-16 06:04 UTC

*(no text)*
