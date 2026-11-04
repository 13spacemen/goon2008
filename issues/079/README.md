# Issue 79: admins need to be able to know the location of the nuke disk

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-26 16:32 UTC |
| Last comment | 2008-06-04 00:51 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/79 |

## Comments

### Comment 0: commenter 6, 2008-05-26 16:32 UTC

```
either by making it part of the mob and thusly observable, or have a secret
which brings up the co-ordinates of it, admins should be able to know if
it's been thrown into space or dumped in the Command centre or the AI sat,
or something equally as synd fucking.
```

### Comment 1: commenter 1, 2008-05-26 16:40 UTC

```
patch making the "observe" verb also able to observe the nuclear disk (with special
precautions that make it not break if people name themselves "Nuclear Disk" for
whatever reason)
```

- Attachment [nuclear disk observe - isno.patch](attachments/79_-3248278443095744483_nuclear%20disk%20observe%20-%20isno.patch), 764 bytes

### Comment 2: commenter 1, 2008-05-26 16:42 UTC

```
note that this also allows dead people to see it, which shouldn't be an issue unless
they're jackasses or respawn is on. imo it's a net positive, but you can wrap that
whole for loop in an "if is_admin" or whatever if you disagree.
```

### Comment 3: commenter 1, 2008-06-04 00:51 UTC

```
fixed in my svn
```
