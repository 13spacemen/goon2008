# Issue 117: Calling shuttle - no right click plz

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-17 19:02 UTC |
| Last comment | 2008-07-12 20:40 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/117 |

## Comments

### Comment 0: commenter 2, 2008-06-17 19:02 UTC

```
Calling the shuttle should be done via card swipe and popup menu, not right
click
```

### Comment 1: commenter 23, 2008-07-08 19:36 UTC

```
Here's a patch that gives the communications console a normal popup interface. 
Calling the shuttle requires now a card with bridge access, but it's easy to change, 
and the console also stores a (deletable) log of the traitor intercept summary.
```

- Attachment [communications_console.patch](attachments/117_6789369652846825259_communications_console.patch), 4,623 bytes

### Comment 2: commenter 1, 2008-07-08 19:56 UTC

```
This patch allows the AI to cancel the shuttle, which is bad.
```

### Comment 3: commenter 23, 2008-07-08 20:38 UTC

```
Well that's easy to fix. Now it tells the AI "Access denied" if it tries to cancel 
the shuttle.
```

- Attachment [communications_console2.patch](attachments/117_-2124627810750413211_communications_console2.patch), 4,697 bytes

### Comment 4: commenter 1, 2008-07-08 21:28 UTC

```
the links don't seem to work very well, presumably because it updates in between
clicking and lifting the mouse button. can you figure out a fix for that? (something
AJAX-y ought to work if nothing else.)
```

### Comment 5: commenter 11, 2008-07-12 19:31 UTC

```
rewrote this patch using kurper's patented state machine design from the DNA
computer. tracks separate states for ai vs. local user so no overlap there.

also supports multiple messages being logged into the communication console, although
the functions for that should be moved into their own procs if we ever insert more
messages into the console.

authenticated users can also delete logged messages, messages are logged separately
on each communications console so someone deleting messages will have to visit each
console.
```

- Attachment [commconsole.unstable.patch](attachments/117_-8557149999395217780_commconsole.unstable.patch), 8,995 bytes

### Comment 6: commenter 11, 2008-07-12 20:30 UTC

```
updated:
- removes AI 'call shuttle' verb
- adds option for AI to call shuttle to the comms computer
```

- Attachment [commconsole.unstable.patch](attachments/117_4964140200620799320_commconsole.unstable.patch), 10,579 bytes

### Comment 7: commenter 1, 2008-07-12 20:40 UTC

```
ideally, AI would be able to recall the shuttle if it called it, but removing the
verb will fix 99% of instances of that happening, so it's not a big issue. also it'd
be nice if the log in thing just used allowed() so they didnt have to take their ID
off, but again, not a big deal.
```
