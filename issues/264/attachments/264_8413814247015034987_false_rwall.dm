/turf/station/wall/false_rwall
	name = "r wall"
	icon = 'Doorf.dmi'
	icon_state = "rdoor1"
	var/operating = null
	var/visible = 1
	var/const/delay = 15
	var/const/prob_opens = 25
	var/list/known_by = list()

/turf/station/wall/false_rwall/attack_paw(mob/user as mob)
	if ((ticker && ticker.mode == "monkey"))
		return src.attack_hand(user)
	return

/turf/station/wall/false_rwall/attack_hand(mob/user as mob)
	src.add_fingerprint(user)
	var/known = (user in known_by)

	if (src.density) //door is closed
		if (known)
			if (open())
				user << "\blue The wall slides open." //lack of exclamation mark reflects nonchalance
		else if (prob(prob_opens)) //it's hard to open
			if (open()) //it successfully opens, i.e. wasn't operating
				user << "\blue The wall slides open!"
				known_by += user
		else
			return ..()
	else
		if (close())
			user << "\blue The wall slides shut."
	return

/turf/station/wall/false_rwall/attackby(obj/item/weapon/screwdriver/S as obj, mob/user as mob)
	src.add_fingerprint(user)
	var/known = (user in known_by)
	if (istype(S, /obj/item/weapon/screwdriver))
		//try to disassemble the false wall
		if (!src.density || prob(prob_opens)) //without this, you can detect a false wall just by going down the line with screwdrivers
			//if it's already open, you can disassemble it no problem
			if (src.density && !known) //if it was closed, let them know that they did something
				user << "\blue It was a false wall!"
			//disassemble it
			user << "\blue Now dismantling false wall."
			var/turf/station/floor/F = src.ReplaceWithFloor()
			//a false wall turns into a sheet of metal and displaced girders
			new /obj/item/weapon/sheet/metal( F )
			new /obj/d_girders( F )
			F.buildlinks()
			F.levelupdate()
			return
		else
			return ..()
	else
		return src.attack_hand(user)

/turf/station/wall/false_rwall/proc/open()
	if (src.operating)
		return 0
	src.operating = 1
	src.name = "false rwall"
	flick("rdoorc0", src) //show the door opening animation
	src.icon_state = "rdoor0"
	spawn(delay) //we want to return 1 without waiting for the animation to finish - the textual cue seems sloppy if it waits
		//actually do the opening things
		src.density = 0
		src.opacity = 0
		src.updatecell = 1
		src.buildlinks()
		src.operating = 0
	return 1

/turf/station/wall/false_rwall/proc/close()
	if (src.operating)
		return 0
	src.operating = 1
	src.name = "r wall"
	flick("rdoorc1", src) //show the door closing animation
	src.icon_state = "rdoor1"
	src.density = 1
	if (src.visible)
		src.opacity = 1
	src.updatecell = 0
	src.buildlinks()
	spawn(delay) //we want to return 1 without waiting for the animation to finish - the textual cue seems sloppy if it waits
		src.operating = 0
	return 1

/turf/station/wall/false_rwall/examine()
	set src in oview(1)
	if (src.density) //door is closed
		..()
	else
		usr << "It's a false rwall. It's open."
	return
