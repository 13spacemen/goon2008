# Issue 64: Even more major enhancements to traitor mode

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-24 21:03 UTC |
| Last comment | 2008-06-04 00:51 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/64 |

## Comments

### Comment 0: commenter 1, 2008-05-24 21:03 UTC

```
- eliminates &quot;hijack&quot; verb (because there's no legitimate use for it really)
- changes objectives:
    - eliminates &quot;eject engine&quot; objective
    - adds &quot;cut power to 80% of the station&quot; objective (percentage can be
changed easily)
    - adds &quot;kill all monkeys on the station&quot; objective (monkeys are valuable)
    - adds &quot;destroy 70% of plasma containers on the station&quot; objective
(percentage can be changed easily)
    - adds &quot;destroy the AI&quot; objective separate from normal assassination
objective
- changes some text to make more sense
- makes intercept only print on bridge, not in engineering or security
- makes &quot;get rid of everyone&quot; AI objective harder (now you have to get rid
of 75%), better described
- fixes bug that would make it impossible to win with &quot;steal fully charged
laser&quot; objective (it went off of 25 charges rather than the current
maximum, 10)
- generally cleans up code
```

- Attachment [major traitor update - isno.patch](attachments/64_5854836565790275407_major%20traitor%20update%20-%20isno.patch), 32,282 bytes

### Comment 1: commenter 2, 2008-05-25 02:43 UTC

```
Can we fix it up so objects in backpacks count towards your stealing goal, or was
that a misinterpreted laser-bug?
```

### Comment 2: commenter 1, 2008-05-25 03:37 UTC

```
I believe that was the laser bug, all items you're carrying or items in items you're
carrying or whatever should work.
```

### Comment 3: commenter 1, 2008-06-04 00:51 UTC

```
fixed in my svn
```
