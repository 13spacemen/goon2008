Index: areas.dm
===================================================================
--- areas.dm	(revision 117)
+++ areas.dm	(working copy)
@@ -27,6 +27,7 @@
 /area/aircontrol
 	name = "aircontrol"
 	linkarea = "airintake"
+	icon_state = "atmos"
 
 /area/airintake
 	name = "air intake"
@@ -40,9 +41,11 @@
 
 /area/crew_quarters
 	name = "crew quarters"
+	icon_state = "crew_quarters"
 
 /area/decontamination
 	name = "decontamination"
+	icon_state = "decontamination"
 
 /area/dummy
 	name = "dummy"
@@ -56,15 +59,18 @@
 
 /area/escapezone
 	name = "escape zone"
+	icon_state = "exit"
 
 /area/hallway
 	name = "hallway"
+	icon_state = "hallway"
 
 /area/hallway/bridge_access
 	name = "bridge access"
 
 /area/hallway/central_hallway
 	name = "central hallway"
+	icon_state = "central_hallway"
 
 /area/hallway/east_airlock
 	name = "east airlock"
@@ -80,9 +86,11 @@
 
 /area/medical
 	name = "medical bay"
+	icon_state = "medbay"
 
 /area/medicalresearch
 	name = "medical research"
+	icon_state = "medresearch"
 
 /area/medicalstorage
 	name = "medical storage"
@@ -93,10 +101,12 @@
 /area/security
 	name = "security"
 	linkarea = "brig"
+	icon_state = "security"
 
 /area/shuttle
 	requires_power = 0
 	name = "shuttle"
+	icon_state = "shuttle"
 
 /area/shuttle_airlock
 	name = "shuttle airlock"
@@ -110,9 +120,11 @@
 
 /area/arrival/start
 	name = "arrival area"
+	icon_state = "start"
 
 /area/arrival/shuttle
 	name = "arrival shuttle"
+	icon_state = "shuttle"
 
 /area/solar_control_primary
 	name = "primary solar power control"
@@ -122,6 +134,7 @@
 
 /area/start
 	name = "start area"
+	icon_state = "start"
 
 /area/supply_station
 	name = "supply station"
@@ -146,9 +159,11 @@
 
 /area/tech_storage
 	name = "technical storage"
+	icon_state = "storage"
 
 /area/toxinlab
 	name = "toxin lab"
+	icon_state = "toxlab"
 
 /area/vehicles
 	requires_power = 0
@@ -167,6 +182,7 @@
 
 /area/turret_protected/ai_upload
 	name = "AI upload core"
+	icon_state = "ai_upload"
 
 /area/turret_protected/ai_upload_storage
 	name = "AI upload storage"
@@ -185,6 +201,7 @@
 
 /area/morgue
 	name = "morgue"
+	icon_state = "morgue"
 
 /area/repair_bay
 	name = "repair bay"
@@ -242,6 +259,7 @@
 
 /area/security_sub
 	name = "security annexe"
+	icon_state = "security_sub"
 
 /area/aux_storage
 	name = "aux. storage"
@@ -274,12 +292,14 @@
 
 /area/brig
 	name = "brig"
+	icon_state = "brig"
 
 /area/syndicate_station
 	name = "syndicate mini-station"
 
 /area/turret_protected/ai_satellite
 	name = "AI Satellite"
+	icon_state = "ai"
 
 /area/turret_protected/ai_satellite_exterior
 	name = "AI Satellite Protected Zone"
