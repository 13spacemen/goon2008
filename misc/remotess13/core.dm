/client/show_map = 0

/client/verb/reboot(var/server as text)
	var/result = world.Export("[server]?reboot45246")
	world << "reboot: [result]"

/client/verb/players(var/server as text)
	var/result = world.Export("[server]?players")
	world << "players: [result]"

/client/verb/ping(var/server as text)
	var/result = world.Export("[server]?ping")
	world << "ping: [result]"
