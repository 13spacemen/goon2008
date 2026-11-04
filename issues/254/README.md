# Issue 254: get rid of verbs for computers, get rid of verb-removal on meteor hitting

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-08-03 04:03 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/254 |

## Comments

### Comment 0: commenter 1, 2008-08-03 04:03 UTC

```
right now meteors just eliminate all of a computer's verbs even examine and
point. just making none of them use verbs at all would fix this in effect.
```

### Comment 1: commenter 11, 2008-08-03 17:06 UTC

```
What about stuff like the DNA scanner? (which is kind of like a computer...)

For reference, here's all the verbs on objs in the game right now (doesn't include
stuff from /atom/Moveable etc- this is just the verbs declared on objs):
$ g '^/.*/verb/' code/ | g obj | g -v rotate | cut -d ':' -f 3- | sort -t ':' -k 3
code/game/weapons.dm:1163:/obj/item/weapon/assembly/m_i_ptank/verb/Arm()
code/game/items.dm:1341:/obj/item/weapon/card/data/verb/label(t as text)
code/game/items.dm:1356:/obj/item/weapon/card/id/verb/read()
code/game/item/weapon/radio.dm:174:/obj/item/weapon/radio/beacon/verb/alter_signal(t
as text)
code/game/demo.dm:665:/obj/item/weapon/tank/jetpack/verb/toggle()
code/game/items.dm:281:/obj/item/weapon/verb/move_to_top()
code/game/newpipe.dm:622:/obj/machinery/circulator/verb/set_rate(r as num)
code/game/newpipe.dm:606:/obj/machinery/circulator/verb/toggle_power()
code/game/demo2.dm:68:/obj/machinery/computer/atmosphere/siphonswitch/verb/auto_on()
code/game/demo2.dm:93:/obj/machinery/computer/atmosphere/siphonswitch/verb/release_all()
code/game/demo2.dm:80:/obj/machinery/computer/atmosphere/siphonswitch/verb/release_scrubbers()
code/game/demo2.dm:44:/obj/machinery/computer/atmosphere/siphonswitch/verb/siphon_all()
code/game/demo2.dm:56:/obj/machinery/computer/atmosphere/siphonswitch/verb/stop_all()
code/game/weap_sat.dm:151:/obj/machinery/computer/data/verb/display()
code/game/weap_sat.dm:161:/obj/machinery/computer/data/verb/read(topic as text)
code/game/shuttle.dm:68:/obj/machinery/computer/prison_shuttle/verb/restabalize()
code/game/shuttle.dm:24:/obj/machinery/computer/prison_shuttle/verb/take_off()
code/game/overview.dm:1:/obj/machinery/computer/security/verb/station_map()
code/game/shuttle.dm:107:/obj/machinery/computer/shuttle/verb/restabalize()
code/game/weap_sat.dm:56:/obj/machinery/computer/teleporter/verb/set_id(t as text)
code/game/cryo.dm:1389:/obj/machinery/cryo_cell/verb/move_eject()
code/game/cryo.dm:1398:/obj/machinery/cryo_cell/verb/move_inside()
code/game/dna/dna_scanner.dm:19:/obj/machinery/dna_scanner/verb/eject()
code/game/dna/dna_scanner.dm:28:/obj/machinery/dna_scanner/verb/move_inside()
code/game/weapons.dm:51:/obj/machinery/nuclearbomb/verb/make_deployable()
code/game/power.dm:735:/*/obj/machinery/power/generator/verb/set_amount(var/g as num)
code/game/cryo.dm:1123:/obj/machinery/sleeper/verb/eject()
code/game/cryo.dm:1132:/obj/machinery/sleeper/verb/move_inside()
code/game/weap_sat.dm:257:/obj/machinery/teleport/station/verb/testfire()
code/game/vehicle.dm:85:/obj/machinery/vehicle/verb/board()
code/game/vehicle.dm:71:/obj/machinery/vehicle/verb/eject()
code/game/vehicle.dm:118:/obj/machinery/vehicle/verb/load()
code/game/vehicle.dm:102:/obj/machinery/vehicle/verb/unload(var/atom/movable/A in src)
code/game/demo.dm:1843:/obj/stool/chair/e_chair/verb/toggle_power()

```

### Comment 2: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
