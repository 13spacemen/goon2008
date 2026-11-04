# Issue 166: Traitor Selection Bug

| Field | Value |
|---|---|
| Status | WontFix |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-30 20:46 UTC |
| Last comment | 2008-07-06 16:41 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/166 |

## Comments

### Comment 0: commenter 2, 2008-06-30 20:46 UTC

```
People have long thought that the sooner you are in the game, the more
likely you are traitor. Well check out this code:


/datum/game_mode/traitor/post_setup()
	var/list/mobs = get_mob_list()
	while (mobs.len == 0)
		sleep 30
		mobs = get_mob_list()
	pick_killer()


Looks like it polls the world every (.3 seconds?) to see if there's more
than zero peeps in the world, then uses that group of people as the
picklist for the Traitor Selection.
```

### Comment 1: commenter 1, 2008-06-30 23:36 UTC

```
I'm pretty sure that only gets called at the "game is starting NOW" notice, so it
only affects people who join after the game starts (and they're screwed anyways).
```

### Comment 2: commenter 1, 2008-07-06 16:41 UTC

*(no text)*
