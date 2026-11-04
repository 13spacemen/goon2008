# Issue 266: Intercoms Talking to Other Intercoms

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-08-14 22:21 UTC |
| Last comment | 2008-10-26 17:22 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/266 |

## Related SVN revisions

Commits whose log message cites this issue:

- r574, 2008-10-26, kelson, `9cd040532` on `/branches/kelson/unstable`: Issue 266: Intercom Patching

## Comments

### Comment 0: commenter 22, 2008-08-14 22:21 UTC

```
Okay, so right now in the map all intercoms have their own frequency..

What if this was changed so all intercoms have a tag, and each intercom can
only send to one intercom at a time, with a system sort of like the id
computer for picking what intercom you want to send messages to.

So any intercom can receive from any other, but they can only send to one
intercom at a time.
```

### Comment 1: commenter 11, 2008-08-14 23:40 UTC

```
I like the idea (especially if it's implemented alongside the 'Comm Room' issue). I
also had some other ideas about essentially phasing out the whole channel system and
switching to a named frequency / subscription based multicast system (so that we have
several named channels that a radio can subscribe to, like a set
general/command/security/engineering channels, most people get 2 subscriptions (their
occupational specialty, and the current general/partyline channel) but certain roles
get enhanced headsets with more channels (like say the captain, who would get 3-4
channels, general/security/command/???). However this would complicate some of the
mechanics for the traitor radio (no more freq to dial in).

what do you propose for the mechanic/say syntax to specify an intercom to send to?
```

### Comment 2: commenter 25, 2008-08-15 15:30 UTC

```
Let's stay realistic... there are lots of more important things that need more work
right now.

Also, the idea of a switchboard seems very old-fashioned. How about giving the OPTION
for an intercom to speak to another, but by default have intercoms broadcast to the
general frequency, because not everyone will have a headset on them.

Speaking of which.... interesting idea... remove headsets on many crewmembers? Issue
will be posted.
```

### Comment 3: commenter 24, 2008-08-15 22:06 UTC

```
I concur with pgoldin - doing "intercom patching" to simulate a phone call could be
cool, but the default behavior is how most people would intend to use it
(broadcasting to everyone). I don't think adding all these additional channels (in a
<30 person server) is worthwhile - though allowing radio-to-radio connections (as
above) may be an idea.
```

### Comment 4: commenter 24, 2008-08-29 02:26 UTC

*(no text)*

### Comment 5: commenter 24, 2008-08-31 15:15 UTC

```
Relevant Changes:
- lots of formatting changes
- patching occurs at the transmit stage
- all radios can establish "patch links"
- only intercoms take advantage of patches
- patching automatically sets the source freq
- changing frequency automatically drops patches

```

- Attachment [intercom patching v1.patch](attachments/266_-5353760258492150615_intercom%20patching%20v1.patch), 21,661 bytes

### Comment 6: commenter 24, 2008-10-26 17:22 UTC

```
Committed in rev 574
```
