//=== computer.dm

//Gas Monitor, based off Engine Control terminal (engine.dm).
//Basically that, stripped down and with the tag property now used
//Modified from Engine Control by Sukasa (darkflight_devil@hotmail.com)
/obj/machinery/computer/gasmon/ex_act(severity)
	switch(severity)
		if(1.0)
			//SN src = null
			del(src)
			return
		if(2.0)
			if (prob(50))
				for(var/x in src.verbs)
					src.verbs -= x
				src.icon_state = "broken"
		if(3.0)
			if (prob(25))
				for(var/x in src.verbs)
					src.verbs -= x
				src.icon_state = "broken"
		else
	return

/obj/machinery/computer/gasmon/New()
	..()

	spawn(5)
		for(var/obj/machinery/gas_sensor/G in machines)
			if(G.id == src.id)
				gs = G
				break
	return

/obj/machinery/computer/gasmon/attackby(var/obj/O, mob/user)
	return src.attack_hand(user)

/obj/machinery/computer/gasmon/attack_ai(var/mob/user as mob)
	return src.attack_hand(user)

/obj/machinery/computer/gasmon/attack_paw(var/mob/user as mob)

	return src.attack_hand(user)
	return

/obj/machinery/computer/gasmon/attack_hand(var/mob/user as mob)
	if(..())
		return
	user.machine = src
	var/dat

	dat = "<B>Gas Monitor - [tag ? tag : ""]</B><HR>"

	if(gs)
		dat += "[gs.sense_string()]<BR>\n<A href='?src=\ref[user];mach_close=computer'>Close</A>"

	else
		dat += "No sensor found.<BR>\n<A href='?src=\ref[user];mach_close=computer'>Close</A>"

	user << browse(dat, "window=computer;size=400x500")
	return

/obj/machinery/computer/gasmon/process()
	if(stat & (NOPOWER|BROKEN))
		return
	use_power(250)
	src.updateDialog()
	return

/obj/machinery/computer/gasmon/Topic(href, href_list)
	if(..())
		return
	if ((usr.contents.Find(src) || (get_dist(src, usr) <= 1 && istype(src.loc, /turf))) || (istype(usr, /mob/ai)))
		usr.machine = src
		src.add_fingerprint(usr)
	src.updateUsrDialog()
	return


//=== power.dm

/datum/powernet/proc/reset()
	load = newload
	newload = 0
	avail = newavail
	newavail = 0


	viewload = 0.8*viewload + 0.2*load

	viewload = round(viewload)

	var/numapc = 0

	for(var/obj/machinery/power/terminal/term in nodes)
		if( istype( term.master, /obj/machinery/power/apc ) )
			numapc++

	if(numapc)
		perapc = avail/numapc

	netexcess = avail - load

	if( netexcess > 100)		// if there was excess power last cycle
		for(var/obj/machinery/power/smes/S in nodes)	// find the SMESes in the network
			S.restore()				// and restore some of the power that was used
		for(var/obj/machinery/power/termrec/S in nodes)	// find the terminal recievers in the network
			S.restore()				// and restore some of the power that was used

/obj/machinery/power/monitor/proc/interact(mob/user)

	if ( (get_dist(src, user) > 1 ) || (stat & (BROKEN|NOPOWER)) )
		if (!istype(user, /mob/ai))
			user.machine = null
			user << browse(null, "window=powcomp")
			return


	user.machine = src
	var/t = "<TT><B>Power Monitoring</B><HR>"


	if(!powernet)
		t += "\red No connection"
	else

		var/list/L = list()
		for(var/obj/machinery/power/terminal/term in powernet.nodes)
			if(istype(term.master, /obj/machinery/power/apc))
				var/obj/machinery/power/apc/A = term.master
				L += A
			if(istype(term.master, /obj/machinery/power/termrec))
				var/obj/machinery/power/termrec/A = term.master
				L += A

		t += "<PRE>Total power: [powernet.avail] W<BR>Total load:  [num2text(powernet.viewload,10)] W<BR>"

		t += "<FONT SIZE=-1>"

		if(L.len > 0)

			t += "Area                           Eqp./Lgt./Env.  Load   Cell<HR>"

			var/list/S = list(" Off","AOff","  On", " AOn")
			var/list/chg = list("N","C","F")

			for(var/obj/machinery/power/apc/A in L)

				t += copytext(add_tspace(A.area.name, 30), 1, 30)
				t += " [S[A.equipment+1]] [S[A.lighting+1]] [S[A.environ+1]] [add_lspace(A.lastused_total, 6)]  [A.cell ? "[add_lspace(round(A.cell.percent()), 3)]% [chg[A.charging+1]]" : "  N/C"]<BR>"

			for(var/obj/machinery/power/termrec/A in L)

				t += copytext(add_tspace(A.area.name + " power relay [A.tag ? "([A.tag])" : ""]:", 46), 1, 46)
				t += "[add_lspace(round(A.charging*(A.output-A.charge)),6)]<BR>"

		t += "</FONT></PRE>"

	t += "<BR><HR><A href='?src=\ref[src];close=1'>Close</A></TT>"

	user << browse(t, "window=powcomp;size=420x700")


//  Terminal reciever, A.K.A. Power Relay.  Simply provides a one-way gate for power to flow through.
//  Based off SMES and APC code and modified by Sukasa (darkflight_devil@hotmail.com)
/obj/machinery/power/termrec/New()
	..()

	//Generic New() copied from SMES and APC
	spawn(5)
		dir_loop:
			for(var/d in cardinal)
				var/turf/T = get_step(src, d)
				for(var/obj/machinery/power/terminal/term in T)
					if(term && term.dir == turn(d, 180))
						terminal = term
						break dir_loop

		if(!terminal)
			stat |= BROKEN
			return

		terminal.master = src
		var/area/A = src.loc.loc
		if(isarea(A))
			src.area = A
		updateicon()


/obj/machinery/power/termrec/proc/updateicon()

	overlays = null
	if(stat & BROKEN)
		return

	overlays += image('power.dmi', "termrec-op[(charging ? 3 : online)]")


/obj/machinery/power/termrec/process()


	//Mostly based off SMES code
	if(stat & BROKEN)
		return

	if(terminal)
		var/excess = terminal.surplus()										// get the available power minus current load

		if(online)
			if((excess + charge >= output) || (excess >= 0 && charging))	// if there's power available,
				if(!charging)												// and if not charging,
					if(chargecount > rand(3,6))								// check the charge count, and if high enough,
						charging = 1										// \ start charging and reset the charge count
						chargecount = 0										// /
					chargecount++											// increment the charge count

			else															// if not enough supply
				charging = 0												// stop transferring
				chargecount = 0												// and reset charge count

		else																// if offline
			charging = 0													// stop transferring
			chargecount = 0													// and reset charge count


		if(charging)														// if outputting
			if(terminal.powernet)											// and terminal has a valid powernet
				terminal.powernet.newload += (output - charge)				// add the load to the terminal side network

			if(powernet)													// If termrec is connected to a powernet,
				powernet.newavail += output									// output to it

			lastout = output												// save how much I supplied for restore() to use
		else
			lastout = 0														// or alternatively, note down I *didn't* supply anything
		updateicon()

	for(var/mob/M in viewers(1, src))
		if ((M.client && M.machine == src))
			src.interact(M)
	AutoUpdateAI(src)



// called after all power processes are finished
// Records any relevant unused power from last ptick

/obj/machinery/power/termrec/proc/restore()
		charge = powernet.netexcess		// this was how much wasn't used on the network last ptick, minus any removed by other sources

		charge = min(lastout, charge)		// clamp it to how much was actually output by this termrec last ptick, and store

		powernet.netexcess -= charge		// remove the excess from the powernet, so later sources don't try to use it

/obj/machinery/power/termrec/attack_ai(mob/user)

	add_fingerprint(user)

	if(stat & BROKEN) return

	interact(user)

/obj/machinery/power/termrec/attack_hand(mob/user)

	add_fingerprint(user)

	if(stat & BROKEN) return

	interact(user)

/obj/machinery/power/termrec/proc/interact(mob/user)

	if ( (get_dist(src, user) > 1 ))
		if (!istype(user, /mob/ai))
			user.machine = null
			user << browse(null, "window=termrec")
			return

	user.machine = src


	var/t = "<TT><B>Power Relay</B> [n_tag? "([n_tag])" : null]<HR><PRE>"

	t += "Supply: [charging ? "Online" : "Offline or too low"]<BR><BR><BR>"

	t += "Power: [online ? "<B>Online</B> <A href = '?src=\ref[src];online=1'>Offline</A>" : "<A href = '?src=\ref[src];online=1'>Online</A> <B>Offline</B> "]<BR>"

	t += "Transfer Rate: <A href = '?src=\ref[src];output=-4'>M</A> <A href = '?src=\ref[src];output=-3'>-</A> <A href = '?src=\ref[src];output=-2'>-</A> <A href = '?src=\ref[src];output=-1'>-</A> [add_lspace(output,5)] <A href = '?src=\ref[src];output=1'>+</A> <A href = '?src=\ref[src];output=2'>+</A> <A href = '?src=\ref[src];output=3'>+</A> <A href = '?src=\ref[src];output=4'>M</A><BR>"

	t += "Power load: [max(round((charging*output) - charge),0)] W<BR>"

	t += "<BR></PRE><HR><A href='?src=\ref[src];close=1'>Close</A>"

	t += "</TT>"
	user << browse(t, "window=termrec;size=460x300")
	return

/obj/machinery/power/termrec/Topic(href, href_list)
	..()

	if (usr.stat || usr.restrained() )
		return
	if (!(istype(usr, /mob/human) || ticker) && ticker.mode.name != "monkey")
		if(!istype(usr, /mob/ai))
			usr << "\red You don't have the dexterity to do this!"
			return

	//world << "[href] ; [href_list[href]]"

	if (( usr.machine==src && (get_dist(src, usr) <= 1 && istype(src.loc, /turf))) || (istype(usr, /mob/ai)))


		if( href_list["close"] )
			usr << browse(null, "window=termrec")
			usr.machine = null
			return

		else if( href_list["online"] )
			online = !online
			updateicon()

		else if( href_list["output"] )

			var/i = text2num(href_list["output"])

			var/d = 0
			switch(i)
				if(-4)
					output = 0
				if(4)
					output = TRECMAXOUTPUT		//30000

				if(1)
					d = 100
				if(-1)
					d = -100
				if(2)
					d = 1000
				if(-2)
					d = -1000
				if(3)
					d = 10000
				if(-3)
					d = -10000

			output += d
			output = max(0, min(TRECMAXOUTPUT, output))	// clamp to range


		src.updateUsrDialog()

	else
		usr << browse(null, "window=termrec")
		usr.machine = null

	return