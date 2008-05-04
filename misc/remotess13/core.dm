/client/show_map = 0

/client/New()
	. = ..()
	src << "For each command, specify the server address, eg: byond://address:port"

/client/verb/reboot(var/server as text)
	var/result = world.Export("[server]?reboot45246")
	src << "reboot: [result]"

/client/verb/players(var/server as text)
	var/result = world.Export("[server]?players")
	src << "players: [result]"

/client/verb/ping(var/server as text)
	var/result = world.Export("[server]?ping")
	src << "ping: [result]"
