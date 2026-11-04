# Issue 264: False rwall door

| Field | Value |
|---|---|
| Status | New |
| Labels | Type-Enhancement, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-11 20:11 UTC |
| Last comment | 2008-10-06 05:10 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/264 |

## Comments

### Comment 0: commenter 22, 2008-08-11 20:11 UTC

```
You'll have to add
	icon_state = &quot;door1&quot;
to false_wall.dm
	icon_state = &quot;rdoor1&quot;
```

- Attachment [false_rwall.dm](attachments/264_8413814247015034987_false_rwall.dm), 2,978 bytes
- Attachment [doorf.dmi](attachments/264_8116679479815439306_doorf.dmi), 2,780 bytes

### Comment 1: commenter 22, 2008-08-15 12:25 UTC

```
See issue 66
```

### Comment 2: commenter 22, 2008-08-19 15:33 UTC

*(no text)*

### Comment 3: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 4: commenter 22, 2008-09-10 04:27 UTC

```
Also have to add an r_wall/attack_hand (the normal turf r_wall, not the false wall
turf) so that you can't just go down a row of them clicking until one of them says
"you push it but bla bla bla"
```

### Comment 5: commenter 22, 2008-10-06 05:10 UTC

```
Also had to do other stupid stuff in stable to make air flow on the stupid fuckers >: (
```
