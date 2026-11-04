# Issue 39: Default "Say"

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 14:15 UTC |
| Last comment | 2008-07-11 14:42 UTC |
| Comments | 12 |
| Archive page | https://code.google.com/archive/p/ss13/issues/39 |

## Comments

### Comment 0: commenter 2, 2008-05-22 14:15 UTC

```
I'd really like, by default, the command field to populate with:

say &quot;

Even if you want to type a command it's lesskeypresses to backspace [say &quot;]
than to type [say] every friggin time you want to talk.

If you want to get fancy make it a checkbox!
```

### Comment 1: commenter 1, 2008-05-22 17:31 UTC

```
This already exists. Press the "chat" button in the bottom-right.
```

### Comment 2: commenter 2, 2008-05-22 18:15 UTC

```
shit

I thought that was a one-shot thing and rather useless. I didn't know the state
refreshed after typing.

delete this ticket...
```

### Comment 3: commenter 4, 2008-05-22 19:56 UTC

```
No, it would be useful to make this the default behavior.
```

### Comment 4: commenter 2, 2008-05-22 20:04 UTC

```
Er... yeah. I forgot the original point of my ticket. DEFAULT SAY! Wooo

might be nice if it could be in 'say mode' or 'command mode' and not actually need to
have "say "" inthe field but that can be some bloat feature down the road.
```

### Comment 5: commenter 1, 2008-05-23 23:25 UTC

```
I disagree, because typing "ready" and "enter" is faster (at least for me) than
opening the command tab and finding them on the long list. I'd be fine with making it
automatically turn on once you spawn or once the game begins, though.
```

### Comment 6: commenter 2, 2008-05-23 23:29 UTC

```
I disagree with kurper, the ease of you typing two commands shouldn't teach people
bad chat habits at beginning of round. I'm thinking make a "/" shortcut or soemthing
in chat mode so you can make commands

like /ready /enter
```

### Comment 7: commenter 1, 2008-05-24 17:06 UTC

```
I think just being in chat mode as it is now by default would work best, without the
current "feature" of "if you enter a non-chat command, exit chat mode".
```

### Comment 8: commenter 24, 2008-07-07 01:02 UTC

```
Well, here's the patch that provides default say (a single line of code added into
client.dm). Chat mode behavior was inconsistent due to implemention, so it is also
forced "on". We might consider adding player preferences; perhaps displayed in a pane
and saved server-side with other data
```

- Attachment [default_say.patch](attachments/39_-903906251136461740_default_say.patch), 450 bytes

### Comment 9: commenter 1, 2008-07-09 17:07 UTC

```
Is there any reason you put it after, rather than before, the spawn(50)? It's kind of
odd after, and before works better because you spawn with it set rather than it being
set 5 seconds after you join (and, I think, resetting anything you typed before then.)
```

### Comment 10: commenter 24, 2008-07-10 23:49 UTC

```
It should be moved before the spawn
```

### Comment 11: commenter 1, 2008-07-11 14:42 UTC

*(no text)*
