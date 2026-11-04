# Issue 187: name coloring (like irc)

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-07-08 23:24 UTC |
| Last comment | 2008-08-16 06:19 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/187 |

## Related SVN revisions

Commits whose log message cites this issue:

- r544, 2008-08-16, kelson, `c4e96d830` on `/branches/kelson/unstable`: Issue #187: IRC-like Name Coloring

## Comments

### Comment 0: commenter 1, 2008-07-08 23:24 UTC

```
right now, basically nobody ever pays attention to the radio. making
people's names be colored in some semi-consistent way might help a little
with this. at the least, it'd make reading all that crap less annoying.
```

### Comment 1: commenter 25, 2008-07-10 18:44 UTC

```
How about making the captain's certain other crewmembers' names always a certain color?
This way people will know better of when the captain is speaking, for the purposes of
following orders and attention.
```

### Comment 2: commenter 1, 2008-07-10 19:56 UTC

```
that's a much better idea that what i was thinking of.
```

### Comment 3: commenter 24, 2008-08-15 03:29 UTC

```
Relevant Changes
- Captain radio commands are dark blue
- HoR/HoP radio commands are teal (off blue)
- Security radio commands are dark red (maroon)
- speech within 1 block is no longer italicized
- get_rank, etc functions moved from traitor mode to access.dm
```

- Attachment [name coloring v1.patch](attachments/187_-5178791839774101993_name%20coloring%20v1.patch), 5,174 bytes

### Comment 4: commenter 24, 2008-08-16 06:19 UTC

*(no text)*
