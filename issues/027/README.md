# Issue 27: Multiple people can have the same rname

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 02:42 UTC |
| Last comment | 2008-06-04 00:49 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/27 |

## Comments

### Comment 0: commenter 1, 2008-05-22 02:42 UTC

```
This is a potentially major issue, because a lot of the code seems to work
off of the assumption that rnames are unique. Determined griefers could
join the game with the same name as existing people and cause things to
fuck up unpredictably.
```

### Comment 1: commenter 1, 2008-05-24 15:48 UTC

*(no text)*

### Comment 2: commenter 7, 2008-05-25 01:25 UTC

```
Once again, a reasonably simple patch. The patch adds a check for when a player
attempts to ready, to see if their rname matches the rname of another ready player,
then tells them to go change it as appropriate. You essentially end up with a 'first
come, first served' approach to naming rights. The match is just a case insensitive
one, using cmptext.

Once again, BYOND under WINE, so I haven't tested this. Compiles against the branch
and the trunk.
```

- Attachment [duplicate name protection - isno.patch](attachments/27_8380990333039432938_duplicate%20name%20protection%20-%20isno.patch), 558 bytes
- Attachment [duplicate name protection - trunk.patch](attachments/27_-6467350998219233963_duplicate%20name%20protection%20-%20trunk.patch), 579 bytes

### Comment 3: commenter 1, 2008-05-25 03:36 UTC

*(no text)*

### Comment 4: commenter 1, 2008-06-04 00:49 UTC

```
fixed in my svn
```
