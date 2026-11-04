# Issue 59: Redo ID system to be based on "can do ____" rather than just some numbers

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-24 17:25 UTC |
| Last comment | 2008-06-19 20:03 UTC |
| Comments | 13 |
| Archive page | https://code.google.com/archive/p/ss13/issues/59 |

## Comments

### Comment 0: commenter 1, 2008-05-24 17:25 UTC

```
Right now, the ID system uses the ugly hack of a four-number system and
also sometimes caring about rank. What it should really be is a bit field,
with permissions such as &quot;can open Toxins,&quot; &quot;can change IDs,&quot; etc, and each
door, computer, etc would require a specific combination of permissions.
This would make the job title effectively just for flavor, which is
desirable because people might want to rename the Captain job to Grand
Inquisitor or something but still keep the same abilities. It'd also give
the traitor another devious thing to do, by getting a full-permissions ID
card with the job title of &quot;station tech&quot; or something. The only problems
with this would be getting around the 16-bit operators in BYOND, as well as
making permissions reasonably easy to edit in the map editor (which doesn't
understand constants or #defines, as far as I know).

Probably it'd be best not to do this until the HTML popup system is redone,
because checking a bunch of checkboxes on the current system would be
infuriating.
```

### Comment 1: commenter 1, 2008-05-24 17:29 UTC

```
Comment deleted
```

### Comment 2: commenter 1, 2008-05-24 18:11 UTC

*(no text)*

### Comment 3: commenter 1, 2008-05-24 18:26 UTC

```
On further reflection, it seems like it'd be better to just have access be a list of
what permissions you have/require. This'd be about as space-efficient if not more so
once you get above 16 different permissions (since you'd probably want a list in that
case anyways), and allows for 2^16 different permissions without having to do crazy
things. Since doors and things will usually only require 1-2 permissions, bitfields
aren't really necessary.
```

### Comment 4: commenter 1, 2008-05-24 18:30 UTC

```
This has the added benefit of making it a lot easier to edit permissions in the map
editor, which doesn't know about #defines and constants. list(4,8,15) rather than 33040.
```

### Comment 5: commenter 5, 2008-05-24 18:33 UTC

```
Well, until the popup system is redone, you could probably make selecting a job from
the list just assign a predetermined permission set, then allow the player to rename
the job if so desired. When identifying a card like this, the console could show the
custom job name as well as what default job the permission level matches (this would
obviously have to change once fully custom IDs are feasible, of course).
```

### Comment 6: commenter 5, 2008-05-24 18:34 UTC

```
Well, I guess that was kinda related to issue 60, but it still applies, so whatever.
```

### Comment 7: commenter 2, 2008-05-25 02:50 UTC

```
Very much in favour of this. I think not showing the access level is quite desireable
- it allows traitors to have id cards that are uber but don't APPEAR uber. To help
tighten this up might want to have only one ID computer in a secure area in future maps.

Makes sense, too: you can't tell what's behind the magnetic strip just by looking at it.

Perhaps later add an ID verification machine in security? *shrug*
```

### Comment 8: commenter 5, 2008-05-25 07:15 UTC

```
Well, the idea would be that you'd use the existing Identification Computer
functionality to view what permissions the card possesses. To modify a card right
now, you need to insert a HoP/Captain-level access card along with the card to be
modified. 

The same modification screen could show the current access level, or another similar
screen could be added to the ID computer just for identification (initially, this
could be as simple as two lines with the "public" job name and the actual job the
current permissions correspond to). This would allow the creation of another, less
restricted access permission only allowing access to the card identification screen
and not the modification area. This permission could then be given to the
Security/Forensic Officer jobs, as they'd have the most use for it.
```

### Comment 9: commenter 1, 2008-05-28 21:30 UTC

```
Here's a preliminary list of the different permissions. Please tell me if you think
of anything these wouldn't cover.
```

- Attachment [access permissions.txt](attachments/59_4489588852043996394_access%20permissions.txt), 560 bytes

### Comment 10: commenter 1, 2008-05-28 21:35 UTC

```
Additional permission: "Access APCs"
```

### Comment 11: commenter 2, 2008-06-16 07:59 UTC

```
It looks like the attribute REQ_ACCESS is "" by default, but your code checks for
"null" which is apparently different.

Tested 3 airlocks:
#1: req_access "", req_access_txt "null" = won't open for engineer
#2: req_access "null", req_access_txt "null" = will open for engineer
#3: req_access "", req_access_txt "12" = will open for engineer
```

### Comment 12: commenter 1, 2008-06-19 20:03 UTC

```
added in svn
```
