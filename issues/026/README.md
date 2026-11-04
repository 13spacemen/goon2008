# Issue 26: "info sheet" for custom laws and game modes

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Revision553 |
| Stars | 0 |
| Opened | 2008-05-22 02:39 UTC |
| Last comment | 2008-08-23 17:57 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/26 |

## Related SVN revisions

Commits whose log message cites this issue:

- r553, 2008-08-23, kelson, `ecb7cc41f` on `/branches/kelson/unstable`: Issue 26: Display Game Mode to late-joiners

Revisions named by the issue's `Revision` labels:

- r553, 2008-08-23, kelson, `ecb7cc41f` on `/branches/kelson/unstable`: Issue 26: Display Game Mode to late-joiners

## Comments

### Comment 0: commenter 1, 2008-05-22 02:39 UTC

```
Right now, if a player joins in the middle of a custom game mode or a game
with non-standard laws (like if a captain outlaws wearing gloves, for
instance), they have no way to know. An &quot;info sheet&quot; that can be updated by
the captain and admins that pops up when people join would be a good way to
fix this. Players could also bring it up midgame with an &quot;info sheet&quot; verb
or something.
```

### Comment 1: commenter 2, 2008-05-22 13:15 UTC

```
Recommend verb/actions be called "DIRECTIVES" instead of "info sheet". Perhaps make
them available via a terminal, giving a quick and easy way for command staff to
update and distribute it without relying on the 'cheating' 'instant-get' verb. This
also opens the door to the traitor snapping in some of his own directives.

This can also be used for the captain to name his successor.
```

### Comment 2: commenter 1, 2008-05-24 15:48 UTC

*(no text)*

### Comment 3: commenter 24, 2008-08-23 17:57 UTC

```
Captain and Captain laws can change at any time and include many nuances anything
outside verbal chat would miss. Attached patch ensures all players see game mode.
```

- Attachment [quick patch.patch](attachments/26_6056973170171110144_quick%20patch.patch), 416 bytes
