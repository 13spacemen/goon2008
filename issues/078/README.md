# Issue 78: Allow doing character setup during the actual round

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-26 16:21 UTC |
| Last comment | 2008-07-23 02:18 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/78 |

## Comments

### Comment 0: commenter 1, 2008-05-26 16:21 UTC

```
A lot of the time, midway through a game I decide that next game I want to
play captain or AI or whatever, but by the time the next game rolls around
I've forgotten. Letting people do char-setup in the middle of the round
(with the &quot;save&quot; feature) would be really nice.
```

### Comment 1: commenter 24, 2008-07-21 04:57 UTC

```
This was a lot more work than anticipated...

Character Preferences are now stored in /datum/preferences on /mob
They can be editted at any time, clicking ready just saves changes during the round
```

- Attachment [char_setup v1.patch](attachments/78_-1407092023321030158_char_setup%20v1.patch), 21,904 bytes

### Comment 2: commenter 1, 2008-07-21 20:38 UTC

```
applied, minus the brackets and debug code you left in
```

### Comment 3: commenter 24, 2008-07-22 01:13 UTC

```
Production Ready:
- Only broadcasts Apple entered as Banana the first time a player clicks ready
- Added close button to window for players who have entered the game
- Moved preferences to /client, no more copies during login
- All setup calls corrected to use /client now
```

- Attachment [char_setup v2.patch](attachments/78_4630205183732325473_char_setup%20v2.patch), 9,029 bytes

### Comment 4: commenter 24, 2008-07-23 02:06 UTC

```
Kurper caught a bug - in preferences.dm replace "src = initial(src)" with "src =
new()" in the "reset" clause of Topic
```

### Comment 5: commenter 1, 2008-07-23 02:18 UTC

```
this issue is double-fixed now
```
