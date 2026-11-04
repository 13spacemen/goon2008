# Issue 30: Forcing pills on people wearing masks. Also eyedroppers.

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 04:42 UTC |
| Last comment | 2008-07-10 18:16 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/30 |

## Comments

### Comment 0: commenter 5, 2008-05-22 04:42 UTC

```
It just doesn't seem very reasonable. Likewise with eyedroppers.

If someone needs to force a pill someone's throat, or use an eyedropper on
them, they should have to remove the target's mask/glasses (as appropriate)
first.
```

### Comment 1: commenter 11, 2008-06-21 19:13 UTC

```
fixed. also cleaned up the flags somewhat on all the masks and head items(made them
use the #defines in atoms.dm)

should probably go in at some point and update the "hides face" bullshit to use the
new flags I added (hides mouth/eyes).
```

### Comment 2: commenter 11, 2008-06-21 19:19 UTC

```
Comment deleted
```

- Attachment eyedropperpillfix.svn.patch, 5,037 bytes: **not recovered**

### Comment 3: commenter 11, 2008-06-21 19:27 UTC

```
fixed and tested this time- blocks eyedroppers on eyes when wearing glasses...
```

- Attachment [eyedropperpillfix.svn.patch](attachments/30_-2921612866864340698_eyedropperpillfix.svn.patch), 5,047 bytes

### Comment 4: commenter 1, 2008-07-08 20:08 UTC

*(no text)*

### Comment 5: commenter 11, 2008-07-10 16:36 UTC

```
updated for unstable
```

- Attachment [eyedropperpillfix.unstable.patch](attachments/30_9036564844868520694_eyedropperpillfix.unstable.patch), 5,484 bytes

### Comment 6: commenter 11, 2008-07-10 16:41 UTC

```
$ patch -p0 < ../eyedropperpillfix.unstable.patch 
patching file code/atoms.dm
patching file code/setup.dm
Hunk #2 FAILED at 54.
1 out of 2 hunks FAILED -- saving rejects to file code/setup.dm.rej
patching file code/game/items.dm
Hunk #1 succeeded at 1064 (offset 4 lines).
Hunk #2 succeeded at 1139 (offset 4 lines).
Hunk #3 succeeded at 3229 (offset 22 lines).
patching file code/game/chemical.dm

the 1 hunk in setup.dm that fails is svn diff being retarded about the lack of
newline at the end of the file, which confuses diff somewhat.
```

### Comment 7: commenter 1, 2008-07-10 18:16 UTC

*(no text)*
