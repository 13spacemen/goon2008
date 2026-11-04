# Issue 253: "quit stealing focus, damnit" - aka a browse wrapper

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-08-02 22:31 UTC |
| Last comment | 2008-08-03 02:40 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/253 |

## Comments

### Comment 0: commenter 11, 2008-08-02 22:31 UTC

```
Since browse is a builtin, we cannot override it, however we can write a
brand new proc which calls it on our behalf (ss13_browse)

Syntax is:
/proc/ss13_browse(user, body, options)

so where you'd normally call:
src &lt;&lt; browse(&quot;some text&quot;, &quot;some options&quot;)

with this you'd call
ss13_browse(src, &quot;some text&quot;, &quot;some options&quot;)

This lets us (in the interim) return focus to the main window input
control, so you can keep moving if the window pops up, and in the future if
we move to UI integrated browser windows we can make all the changes in 1
place and it'll work like magic.
```

- Attachment [quitstealingfocus.unstable.patch](attachments/253_8647080269499188763_quitstealingfocus.unstable.patch), 55,810 bytes

### Comment 1: commenter 11, 2008-08-02 22:32 UTC

```
oh yeah, the patch is so big because I used sed to automatically convert all the
other calls to browse in the source code.
```

### Comment 2: commenter 1, 2008-08-03 02:40 UTC

*(no text)*
