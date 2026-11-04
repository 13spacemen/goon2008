# Issue 259: Three-level configurable Authentication

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Revision551 |
| Stars | 0 |
| Opened | 2008-08-06 04:05 UTC |
| Last comment | 2008-08-23 03:34 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/259 |

## Related SVN revisions

Commits whose log message cites this issue:

- r551, 2008-08-23, kelson, `d44f8d3b4` on `/branches/kelson/unstable`: Issue 259: Tiered Authentication

Revisions named by the issue's `Revision` labels:

- r551, 2008-08-23, kelson, `d44f8d3b4` on `/branches/kelson/unstable`: Issue 259: Tiered Authentication

## Comments

### Comment 0: commenter 24, 2008-08-06 04:05 UTC

```
Authentication should be more configurable:
Authentication = disabled (none takes place)
Authentication = optional (everyone allowed to play)
Authentication = required (goons only, basically)
```

### Comment 1: commenter 22, 2008-08-06 05:23 UTC

```
if(src.ckey == "guest") kick

thanks in advance
```

### Comment 2: commenter 22, 2008-08-06 05:40 UTC

```
How about the optional auth option allows pubbies in, but they can't be part of the
command structure?
```

### Comment 3: commenter 24, 2008-08-06 08:57 UTC

```
Okay...

Authentication = optional, restrict Captain,etc,etc
Authentication = optional, restrict 5 (top 5 ranks)
```

### Comment 4: commenter 24, 2008-08-16 04:53 UTC

```
Config.txt syntax:
authentication disabled (public-mode)
authentication required (private-mode "goons only")
authentication optional permit(Occupation1,Occupation2,...)
authentication optional restrict(Occupation1,Occupation2,...)

Restrict(JobA) prevents non-authenticated players getting JobA
Permit(JobA) allows non-authenticated players to ONLY get JobA

Relevant Changes:
- Fixed bug where remaining_occupations wasn't actually shuffled
- Many, many changes on how authentication works (and job picking)
- Rewrote most of the job assignment code (suggest future rewrite)
- Added "in var/list" functionality to dd_text2list / dd_text2List
- AUTHENTICATED REQUIRED automatically kicks non-authenticated users
```

- Attachment [three-tiered authentication v1.patch](attachments/259_5414061882695456457_three-tiered%20authentication%20v1.patch), 12,927 bytes

### Comment 5: commenter 24, 2008-08-23 03:34 UTC

```
Added backwards compatability for old config files (REQUIRED)
Corrected several minor bugs / extended functionality
```

- Attachment [three-tiered authentication v2.patch](attachments/259_5470239076492847646_three-tiered%20authentication%20v2.patch), 14,749 bytes
