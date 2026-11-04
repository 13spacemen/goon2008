# Issue 210: admin system needs an overhaul

| Field | Value |
|---|---|
| Status | Started |
| Labels | Type-Enhancement, Priority-High, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-07-23 19:37 UTC |
| Last comment | 2008-08-29 02:26 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/210 |

## Comments

### Comment 0: commenter 1, 2008-07-23 19:37 UTC

```
we need a more fine-tuned banning system. specfically, here is what would
probably be ideal?

1. admin panel has a list of users where you can click on a user and the
functions for them pop up (instead of the current separate menus for
PM/ban/boot/mute/authorize/monkify system)

2. the types of ban are round, day, week, month, permanent, and custom
(expiring after some amount of time or number of rounds)

3. all bans are logged and the main administrators are shown the new bans
when they log in or specifically check for them - they can then upgrade
them to permabans, demote whoever instated the ban, or whatever at their
leisure

4. a better admin classification system that makes more sense - here is
what i am thinking:
Game Masters can abort votes, change the mode, toggle OOC, mute and
roundban people (this would be for people who haven't earned trust yet mostly)
Moderators can do all that plus ban for up to a week or large number of
rounds (this would be for trusted folk)
Administrators can do all that plus spawn items and do other abusable
things (this is basically for people like evarr/abakahn/ratama, so they can
set up custom game modes)
Primary Administrators can permaban and would be basically just the host
and people that the host trusts absolutely - the potential for abuse is
basically the same as with existing primary admins, i.e. very high
(this naming system is pretty awful and hopefully someone else will come up
with better names etc)

5. all admin actions (not just bans) would be logged and logs would
accessible from an ingame menu. the logs would not be able to be deleted
except manually (i.e. go into the folder in windows explorer).

ideally, the more abusable things (like viewing the key of the traitor and
spawning items etc, perhaps even banning) would only be accessible if the
admin enters an admin mode, which prevents them from playing for the rest
of the round. this would not necessarily apply to primary admins, who knows

thoughts?
```

### Comment 1: commenter 33, 2008-07-23 19:53 UTC

```
cool
```

### Comment 2: commenter 25, 2008-07-23 20:07 UTC

```
When not in "admin mode" the admin should be able to send a special message to the
traitor (without revealing their identity to the admin), so that they can check if
the traitor is still active and hasn't disconnected.

Private messaging would reveal the traitor's ID when they reply, so perhaps a new
discrete system within the limited non-'admin mode" menu?
```

### Comment 3: commenter 25, 2008-07-23 20:23 UTC

```
Admins should be able to include a custom message when assigning a ban, so that the
player getting banned knows exactly what they did, as well as a (customizable by the
host) message to display for all bans.
```

### Comment 4: commenter 34, 2008-07-24 01:12 UTC

```
God please, the menus are so fucking convoluted. 

In addition, it would be nice to have comments attached to bans or maybe users in
general. Why was this jerk banned, how many strikes does his stupid ass have, alts, etc.
Those player logs the pubbies have would be pretty bitchn too and maybe a way to
revive players, if they were griefed. This of course could be horribly abused so like
it would announce itself or something?

Now, your idea of "admin mode" seems like it's oping between playing or admining and
thats really really gay, I'd probably stop admining in general =|


```

### Comment 5: commenter 2, 2008-07-24 09:04 UTC

```
Banning should allow you to connect and login to the game, but perhaps instead of
seeing the char setup screen would see the reason for their old ban, and the expiry?
```

### Comment 6: commenter 1, 2008-07-28 02:12 UTC

```
Nearly done, just needs better ban management and ingame promoting/demoting admins
pretty much. And the logging system needs overhauling, of course, but that's a huge
task too. Also, the interface isn't quite perfect (tables need borders).
```

### Comment 7: commenter 24, 2008-08-03 15:09 UTC

```
Changelog:
- /client/New removed from admin.dm (appended in client.dm)
- removed spawn delay on admin abilities (worked fine in tests)
- fixed bug in, and cleaned/extended, ban output (one hour != 36000s)
- abort_vote now iterates over all clients (instead of mobs)
- authorize is no longer an alias for ban
- fixed bug in change_mode that caused it to only appear after game start
- simplified change_mode to use a list of possible modes instead of rampant checks

Suggest: Ban_Alert displays who banned the player
Suggest: Make Objects have a search bar in the window
```

- Attachment [overhaul v1.patch](attachments/210_7376663576702297008_overhaul%20v1.patch), 16,495 bytes

### Comment 8: commenter 24, 2008-08-06 21:12 UTC

```
Suggest: Add Command: Modify Variable (admin can set arbitrary variable values)
```

### Comment 9: commenter 24, 2008-08-29 02:26 UTC

*(no text)*
