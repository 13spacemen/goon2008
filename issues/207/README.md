# Issue 207: airlock / windoor hacking

| Field | Value |
|---|---|
| Status | New |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-21 23:35 UTC |
| Last comment | 2008-08-29 02:26 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/207 |

## Comments

### Comment 0: commenter 11, 2008-07-21 23:35 UTC

```
windoors should be hackable, and airlocks should be slower to hack

ideas from irc stream of consciousness:

5-10 seconds to open/close panel
5-10 seconds to pulse/cut wire
10-15 seconds to attach a signaller, or any other 'in depth' task (like
replacing burned out control modules, if anything similar is ever added)

for windoors/airlocks, emag should now 'burn out' the ID scan and door open
wires (set to state 2) so the door cannot be further tampered with, this
should replace the existing EMAGGED flag.

windoors should have at least 4 (if not maybe 6?) wires:
- door open
- id scan
- primary power +
- primary power -
- backup power + (optional?)
- backup power - (optional?)

backup should probably be optional as presumably the doors simply have a
built in battery that keeps them operating during loss of power situations.
```

### Comment 1: commenter 24, 2008-08-29 02:26 UTC

*(no text)*
