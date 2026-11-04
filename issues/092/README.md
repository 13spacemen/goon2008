# Issue 92: Teleporters only lock on to beacons, respond to left-click, other enhancements

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-27 01:59 UTC |
| Last comment | 2008-06-04 00:52 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/92 |

## Comments

### Comment 0: commenter 1, 2008-05-27 01:59 UTC

```
This makes left-clicking on the teleporter computer bring up the dialog
(which just lists beacons rather than silly things with frequencies, which
may or may not be desirable). It also allows the AI to use the teleporter
(although it can't test-fire and, because of the odd was the camera system
works, can only select a place to lock on to if it's following someone).
And it makes only beacons be lock-on-to-able, instead of anything at all.
Left-clicking the hub will either engage or disengage it, depending on
which makes sense. And the teleportation target will now move if the beacon
moves, rather than staying in the same place (so if a teleporter's locked
onto a beacon and you throw it into space, you don't want to teleport to it).
```

- Attachment [only teleport to beacons - isno.patch](attachments/92_6659965569356322005_only%20teleport%20to%20beacons%20-%20isno.patch), 5,921 bytes

### Comment 1: commenter 2, 2008-05-27 07:51 UTC

```
Or if the traitor is leaving beacons around it's a good idea TO throw them into
space. :D I like all of these changes.
```

### Comment 2: commenter 1, 2008-06-04 00:52 UTC

```
fixed in my svn
```
