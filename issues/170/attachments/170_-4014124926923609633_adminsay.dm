/mob/verb/adminsay(msg as text)
	//	All admins should be authenticated, but... what if?
	if(!src.client || !src.client.authenticated || !src.client.holder)
		src << "Only administrators may use this command."
		return

	//	Seems silly to log the message without sanitizing, but other *.dm do...
	world.log << "ADMIN: [src.name]/[src.key] : [msg]"
	msg = html_encode(copytext(sanitize(msg), 1, 1024))

	if (!msg)
		return

	for(var/mob/M in world)
		if (M.client && M.client.holder)
			M << "\blue <b>ADMIN: <a href='?src=\ref[usr];priv_msg=\ref[usr]'>[src.name]</a>/([src.key]):</b> [msg]"
