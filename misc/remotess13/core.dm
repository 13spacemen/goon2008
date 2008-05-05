/client/show_map = 0

/client/New()
	. = ..()
	src << "For each command, specify the server address, eg: byond://address:port"
	src << "Note that your IP is logged when rebooting."

/client/verb/reboot(var/server as text)
	var/result = world.Export("[server]?reboot45246")
	src << "reboot: [result]"

/client/verb/players(var/server as text)
	var/result = world.Export("[server]?players")
	src << "players: [result]"

/client/verb/ping(var/server as text)
	var/result = world.Export("[server]?ping")
	src << "ping: [result]"

/client/verb/status(var/server as text)
	var/result = world.Export("[server]?status")
	src << "status: [result]"
