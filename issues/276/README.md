# Issue 276: Null Killer in traitor Mode

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low, Revision561, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-24 00:44 UTC |
| Last comment | 2008-08-29 02:19 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/276 |

## Related SVN revisions

Commits whose log message cites this issue:

- r561, 2008-08-29, kelson, `550908b32` on `/branches/kelson/unstable`: Issue 276: Null Killer in Traitor mode

Revisions named by the issue's `Revision` labels:

- r561, 2008-08-29, kelson, `550908b32` on `/branches/kelson/unstable`: Issue 276: Null Killer in Traitor mode

## Comments

### Comment 0: commenter 24, 2008-08-24 00:44 UTC

```
runtime error: Cannot read null.name
proc name: get rank (/proc/get_rank)
  source file: access.dm,201
  usr: null
  src: null
  call stack:
get rank(null)
traitor (/datum/game_mode/traitor): get pickable items(null)
traitor (/datum/game_mode/traitor): send intercept()
traitor (/datum/game_mode/traitor): post setup()
Cent. Com. Update Enemy communication intercept. Security Level Elevated
Summary downloaded and printed out at communications consoles.

Could not reproduce - occurred in single player while testing the engine
```

### Comment 1: commenter 24, 2008-08-28 01:26 UTC

```
Relevant Changes:
- lots of reformatting text
- pick_objectives now uses get_all_humans instead of get_all_mobs
```

- Attachment [traitor objectives v1.patch](attachments/276_2975816408982506613_traitor%20objectives%20v1.patch), 26,882 bytes

### Comment 2: commenter 24, 2008-08-29 02:19 UTC

```
Attached patch committed in revision 561
- ONLY reformatting changes in access.dm
```

- Attachment [traitor objectives v2.patch](attachments/276_6537397498770986084_traitor%20objectives%20v2.patch), 26,884 bytes
