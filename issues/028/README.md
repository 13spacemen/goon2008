# Issue 28: Allow forensics to determine time of death

| Field | Value |
|---|---|
| Status | WontFix |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-22 02:44 UTC |
| Last comment | 2008-08-23 18:00 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/28 |

## Comments

### Comment 0: commenter 1, 2008-05-22 02:44 UTC

```
CSI can do it, why can't forensic techs? It'd make their jobs more
interesting and add a lot of depth to murder, I think. Of course, this
would work best with timestamps in the chat window on the right, so people
could easily tell about when they last met someone.
```

### Comment 1: commenter 2, 2008-05-22 13:17 UTC

```
Time of death should be recorded in the person's memory log. What we need is a
brainscanner so you can pull someone's memory, both for autopsy and interrogation
purposes. Mind reader should be a device in forensics locker and in very limited
supply/access. :)
```

### Comment 2: commenter 1, 2008-05-24 15:49 UTC

*(no text)*

### Comment 3: commenter 11, 2008-06-15 16:40 UTC

```
>> Of course, this would work best with timestamps in the chat window on the right,
so people could easily tell about when they last met someone.

Even better would be if this was integrated with the 'Comm Room' suggestion in Issue
102. Have a computer in communications that logs all radio traffic- but also have
some way for the traitor to get in there and delete communication logs.
```

### Comment 4: commenter 2, 2008-06-29 19:24 UTC

```
This patch adds a time of death memory (Based on the server's realworld hh:mm:ss
time). It won't do much now as there's no way to access memories, but that'll change.

Changes should work for /stable but was based on /unstable.
```

- Attachment [tod_unstable.patch](attachments/28_-4086650384067223508_tod_unstable.patch), 360 bytes

### Comment 5: commenter 1, 2008-07-10 15:44 UTC

```
this uh seems like a pretty useless patch considering that there's already a
timeofdeath variable or something along those lines, and you're the only person who
thinks that making a way to access memories would be worthwhile or make sense.
```

### Comment 6: commenter 2, 2008-07-10 16:29 UTC

```
The TOD variable isn't updated I don't think. Or if it is I didn't see it.

The "memory" could be stripped out entirely, but I think it has a useful function. It
adds a level of depth to the game. It could open up the door to some
autopsy-brain-scans to see if someone was the traitor, or doing nefarious acts; could
allow for pills that wipe memory or alcohol making bits of it hazy.

It's a bit too deep of a featureset to be implemented right now which is why I say
"eventually;" all the other public forks seem to have implemented memories.

If done well it would even be fun just to glance back at your own memory as a bit of
a game log. I'd use it anyway.
```

### Comment 7: commenter 24, 2008-08-23 18:00 UTC

```
Time of Death is displayed to players at current; additional tools must be
implemented to display memories / timeofdeath. Closing requirement until next branch.
```
