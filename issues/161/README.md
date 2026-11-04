# Issue 161: add_memory should have popup toggle

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low |
| Stars | 0 |
| Opened | 2008-06-29 19:53 UTC |
| Last comment | 2008-08-16 06:13 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/161 |

## Related SVN revisions

Commits whose log message cites this issue:

- r543, 2008-08-16, kelson, `2d281cd8b` on `/branches/kelson/unstable`: Issue 161: Added store_memory with a popup toggle

## Comments

### Comment 0: commenter 2, 2008-06-29 19:53 UTC

```
The add_memory proc (/code/mob/memory.dm) should have an optional variable
(that defaults to false) to show the popup upon adding a memory.

This will make a memory-usage overhaul much easier as you probably don't
want a memory popup every time you club someone over the head or touch a door.

Also have add_memory call the view_memory proc right above it instead of
duplicating the code :psyduck:
```

### Comment 1: commenter 1, 2008-07-10 20:10 UTC

*(no text)*

### Comment 2: commenter 24, 2008-08-15 02:13 UTC

```
Patch added (verb parameters MUST have a type other than datum)
```

- Attachment [memory popup.patch](attachments/161_-5423497125793127262_memory%20popup.patch), 604 bytes

### Comment 3: commenter 24, 2008-08-16 06:13 UTC

```
Unitialized verb paramters will call input for possible values
Modified to use store_memory(msg,popup) which sanitizes/text-limits
```

- Attachment [memory popup v2.patch](attachments/161_-4155868518804606651_memory%20popup%20v2.patch), 657 bytes
