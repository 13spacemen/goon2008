# Issue 104: Radio use in closets inconsistent

| Field | Value |
|---|---|
| Status | Duplicate |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-13 17:43 UTC |
| Last comment | 2008-07-10 19:04 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/104 |

## Comments

### Comment 0: commenter 11, 2008-06-13 17:43 UTC

```
&quot;What's the deal with lockers being partially radioproof, anyways? From my
knowledge, people can hear what you say, but you can't hear what they're
saying over the radio. Kinda weird.&quot;

This patch (which may not apply cleanly to trunk without some fuzz- since
my mob.dm was already modified with my previous deathgasp patch) stops
people from using any kind of radio/speech while inside a locker, after all
noone hears you- you're inside a locker! It also tidies up all the [h]/[i]
etc to use if/elseif/else statements, so it's not a nested mess.
Could/should probably switch to a switch/case structure but I'm not sure if
it'll benefit much...
```

- Attachment [locker.radio.patch.txt](attachments/104_-2358249898115486768_locker.radio.patch.txt), 4,609 bytes

### Comment 1: commenter 1, 2008-06-14 00:13 UTC

*(no text)*

### Comment 2: commenter 1, 2008-07-10 19:04 UTC

*(no text)*
