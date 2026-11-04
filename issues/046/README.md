# Issue 46: isno checks for game end forever, shuttle doesn't leave

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Critical, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-23 01:15 UTC |
| Last comment | 2008-06-04 20:42 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/46 |

## Related SVN revisions

Commits whose log message cites this issue:

- r107, 2008-06-04, kurper, `32929e87c` on `/branches/kurper/isnochysn`: Fixed issue 46, which was making games not ever end. Also made it easier to change time for shuttle to arrive and how long it stays in the s

## Comments

### Comment 0: commenter 1, 2008-05-23 01:15 UTC

```
on isno, when you call the shuttle and get in it and wait for the stuff to
end, it calls check_win() indefinitely (which prints out &quot;Bob was the
traitor! He failed!&quot; or whatever) and the shuttle just stays where it is.
This is probably not the desired behavior.
```

### Comment 1: commenter 1, 2008-05-23 18:02 UTC

*(no text)*

### Comment 2: commenter 1, 2008-05-24 16:00 UTC

*(no text)*

### Comment 3: commenter 1, 2008-05-27 17:58 UTC

*(no text)*

### Comment 4: commenter 1, 2008-06-04 20:42 UTC

```
Turns out this is fairly simple. ticker.check_win() calls gamemode.check_win() and
aborts if it doesn't return 1, but none of the game modes' check_win()s end with
"return 1". Adding that to the end of those functions fixes everything. Fixed in my svn.
```
