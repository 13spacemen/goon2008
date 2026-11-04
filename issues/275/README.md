# Issue 275: Engine doesn't work in unstable

| Field | Value |
|---|---|
| Status | Patched |
| Labels | Type-Defect, Priority-Critical, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-23 19:58 UTC |
| Last comment | 2008-08-29 22:36 UTC |
| Comments | 9 |
| Archive page | https://code.google.com/archive/p/ss13/issues/275 |

## Related SVN revisions

Commits whose log message cites this issue:

- r557, 2008-08-24, kelson, `785c53350` on `/branches/kelson/unstable`: Issue 275: Power Generation Broken
- r558, 2008-08-25, kelson, `074eb68db` on `/branches/kelson/unstable`: Issue 275: engine works now (in a runaway reaction)

## Comments

### Comment 0: commenter 24, 2008-08-23 19:58 UTC

```
Pipes don't seem to be operating anymore
```

### Comment 1: commenter 24, 2008-08-24 00:40 UTC

```
Relevant Bugfixes
- Map incorrectly used /valve - replaced with /valve/mvalve
- Heat_exchange was using the wrong variable (still doesn't conserve energy)
- The heat exchangers pay attention to the temperature of space (but not gas quantity)

Future Fixes
- Generated energy drops off fast; despite high temperature differentials
```

- Attachment [engine patch v1.patch](attachments/275_8361931722289062905_engine%20patch%20v1.patch), 26,714 bytes

### Comment 2: commenter 24, 2008-08-24 19:39 UTC

```
Enthalpy values (to make it a proper simulation)
O2 31.58 - N2 29.86 - CO2 45.94 - NO2 43.33 - Plasma 66.21
```

### Comment 3: commenter 24, 2008-08-24 19:59 UTC

```
Relevant Changes
- Generated energy bumped up 1000% to mirror stable generation
- Not all valves were replaced with mvalves - fixed in this version

TODO/Bugs:
- Use realistic thermodynamics
- Gas leaks through junctions
```

- Attachment [engine patch v2.patch](attachments/275_6214443802832513329_engine%20patch%20v2.patch), 31,727 bytes

### Comment 4: commenter 24, 2008-08-28 01:30 UTC

```
New patched status used until committed
```

### Comment 5: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 6: commenter 24, 2008-08-29 15:08 UTC

```
Relevant Changes:
- seperated newpipe.dm into /machinery/pipes/*.dm (about 10 files)
```

- Attachment [engine patch v3.patch](attachments/275_-3074534925091072737_engine%20patch%20v3.patch), 92,542 bytes

### Comment 7: commenter 24, 2008-08-29 22:34 UTC

```
Relevant Changes
- circulator verbs toggle_power and set_rate again usable
- many formatting / flow / code-consistency issues addressed
- fixed several bugs in calc_deltas using copy_gas instead of copy_all
```

- Attachment [engine patch v4.patch](attachments/275_-438047687752845414_engine%20patch%20v4.patch), 53,184 bytes

### Comment 8: commenter 24, 2008-08-29 22:36 UTC

```
Just a note for the last patch - while I normally create each patch against the same
baseline, patch v4 is against patch v3 which was against the baseline from issue
start. Unstable had patch v3 committed for ease of using diff to continue this issue.
```
