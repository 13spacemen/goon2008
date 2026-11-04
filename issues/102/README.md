# Issue 102: Communications job and room

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Enhancement, Priority-High |
| Stars | 0 |
| Opened | 2008-06-06 17:25 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/102 |

## Comments

### Comment 0: commenter 1, 2008-06-06 17:25 UTC

```
Taken from
http://forums.somethingawful.com/showthread.php?noseen=0&amp;threadid=2830717&amp;pagenumber=55#post344450289

A &quot;communications room&quot;, staffed by &quot;Comms Technician&quot; and &quot;Comms
Assistant&quot;, which is basically a set of equipment that keeps radio devices
transmitting freely across the station and keeps frequencies open. From
this room, certain frequencies can be blocked, and as long as the equipment
is active then radio headsets, intercoms, and station bounced radios will
broadcast to everything on the station that recieves it (as it does now).
If the room is turned off though for whatever reason, then headsets and
bounced radios will only be able to transmit/recieve a short to medium
distance away from their location - you won't be able to contact the bridge
from medbay and vice versa. Also, the comms room has a sort of &quot;Universal
Radio&quot; which monitors every frequency simultaneously (it's basically just a
static speaker that listens on all frequencies), so they can tell if
anything clandestine is going on - with the side effect of making them a
very high priority target for traitors and syndicate.

Another feature in the room that would require high access is a control
panel for &quot;Radio Masts&quot; on the outside of the station - as long as these
are enabled and functioning (they consume minimal power) they can pick up
broadcasts from anywhere outside the station - namely, the AI satellite,
and people out in space for whatever reason. Turn off the radio masts and
the station will no longer recieve the AI's talking, advice, warnings, and
so forth. Naturally, the AI itself can't reactivate radio masts. This is
also a measure not only to make the game more interesting but to
counterbalance the AI a bit, which i've found is always a bit powerful in
traitor games as it just needs to watch someone and constantly parrot on
about where the traitor is - this gives the traitor a risky option of being
able to shut the AI up until someone discovers he's fucked around with the
masts. Risky because the Comms room should always be manned. (I figure it
should be near security if anywhere, or even a part of security itself)

One further function of the room is to turn on/off stationwide alerts - for
instance, if the traitor turned off the alerts and then went to jettison
the engine, no-one would know unless they were actually in the engine at
the time. This would also make for some hilarious fuckery regarding calling
the shuttle, then sneaking off on it without anyone realising. (A good
option for those &quot;escape alone&quot; objectives) Along the same lines, the room
could feature an Alert Radio which is just a normal radio except it
broadcasts in big red text to get everyone's attention.

So to sum up, Comms would be a high-security, high-risk area which
maintains communications stationwide.

For players on the side of the station it adds the ability to monitor all
communications, hinder enemy communications, and broadcast alerts to direct
everyone. It takes away the ability to take ingame communication for granted.

For traitors and syndicate, it adds a high-difficulty, high-reward option
for fucking around with your opponents. It takes away the ability to set
off bombs unnoticed and use alternate frequencies for whatever reason.

For AI players, it adds more convenience to being able to speak on private
frequencies (call the Captain to the comms room to speak with him on some
obscure frequency). It takes away the ability to speak freely all the time,
and requires you to keep an eye on the comms room to make sure an adept
traitor/griefer/syndicate/paranoid crewman isn't trying to silence you.
```

### Comment 1: commenter 11, 2008-06-21 14:27 UTC

```
As part of rewriting radios to support this- switch all radios to use integers for
the internal frequency storage and just /10 when displaying them to avoid all byond's
bullshit floating point and rounding problems.
```

### Comment 2: commenter 1, 2008-07-10 19:56 UTC

*(no text)*

### Comment 3: commenter 11, 2008-07-17 04:29 UTC

```
maybe as part of this rewrite (since radios are already done) the radios should be
moved to a subscription/multicast system where every radio has a unique id assigned
to it and according to access level you get 1, 2, or 3 streams on the radio (to let
you keep an eye on multiple frequencies as the captain). Perhaps in addition to this
certain frequencies/channels should be locked to certain ranks so you can have a
command channel, an engineering channel, etc.

also mentioned this in irc, maybe instead of having a new language for syndicate,
they can speak english but their radios have encryption capability, so while you can
switch to their freq you hear nothing but static. unless of course you neutralize one
of them and steal their radio (which you could then put near a regular crew radio to
transfer messages between the systems).
```

### Comment 4: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
