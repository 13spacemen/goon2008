# Issue 300: Traitor Item - Camera Jammer

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-10-15 02:45 UTC |
| Last comment | 2008-10-26 17:34 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/300 |

## Related SVN revisions

Commits whose log message cites this issue:

- r575, 2008-10-26, kelson, `2df2fcb51` on `/branches/kelson/unstable`: Issue 300: Active Camera Jammer (Patch by Navee)

## Comments

### Comment 0: commenter 43, 2008-10-15 02:45 UTC

```
I have added an item which can be spawned from the traitor radio.  It uses
a slightly modified Locator icon.  When activated it removes you from the
AI's tracking list and cancels it if he is already tracking you.  It can be
placed in the belt and pretty much run constantly (though that may draw
suspicion from wary AIs).  The patch file is included (if I did it right).
```

- Attachment [camjam.patch](attachments/300_3307876771420129869_camjam.patch), 2,526 bytes

### Comment 1: commenter 22, 2008-10-15 02:47 UTC

*(no text)*

### Comment 2: commenter 43, 2008-10-15 03:02 UTC

```
Use this .patch instead, I forgot to include items.dm on the first one.
```

- Attachment [camjamworks.patch](attachments/300_6398070429919189705_camjamworks.patch), 4,940 bytes

### Comment 3: commenter 24, 2008-10-15 03:19 UTC

```
Great first patch, thanks for contributing. I made a couple modifications as
explained below; please note binary files (items.dmi) don't transfer in patch files
(you need to upload them seperately).

atoms.dm: var/on moved to end of type declaration
- new variables should generally be declared at the end of a type
- obviously many declarations don't obey this 'rule' at present

items.dm: inserted newlines in super-long string
- makes reading and understanding the function much easier

equipment.dm: reduced tab on return 0
- the desired behavior is to see if ANY jammer is active, not (as the code did) just
the first encountered

var.dm: removed extra variable
- not used

newitems.dm: removed /process()
- empty function removed

verbs.dm: replaced "Tracking error." with "Tracking Error"
- remove punctuation to potentially chain with other text (not a sentence)

newitems.dm: replaced "Tracking error!" with "Tracking Error"
- consistency with previous text

newitems.dm: removed return statement
- open ended design pre-supposes possibility of more than one AI
- desired behavior is to stop ALL AIs who might be tracking
```

- Attachment [camera jammer v3.patch](attachments/300_-3333536059958310307_camera%20jammer%20v3.patch), 4,477 bytes

### Comment 4: commenter 43, 2008-10-15 04:30 UTC

```
Comment deleted
```

- Attachment Icons.dmi, 17,275 bytes: **not recovered**

### Comment 5: commenter 43, 2008-10-15 04:31 UTC

```
I thought I did a couple of those fixes in my second upload, oh well.  Thanks for the
help, Kelson.

```

- Attachment [items.dmi](attachments/300_-7929160652093679576_items.dmi), 34,124 bytes

### Comment 6: commenter 24, 2008-10-26 17:34 UTC

```
This patch doesn't entirely "make sense" given rev 572, but the functionality is
valuable even without traitors in the (current) game. Please comment on your notable
changes in a concise manner as well, so others can tell what areas were modified in
what area.

Relevant Changes: (Patch by Navee)
- added /obj/item/weapon/jammer
- CameraInvisible added to camera functions
- improved formatting for syndicate radio (code-side)
- standardized error message for those jamming cameras ("Tracking Error")

Committed in rev 575
```
