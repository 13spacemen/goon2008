# Issue 68: AI cannot read papers

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-25 01:01 UTC |
| Last comment | 2008-06-20 14:20 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/68 |

## Comments

### Comment 0: commenter 3, 2008-05-25 01:01 UTC

```
AI cannot read papers through its cameras fix please
```

### Comment 1: commenter 2, 2008-05-25 02:37 UTC

```
I don't think the AI should be able to. Camera too low a resolution or something?

I've used papers once to secretly pass info the AI can't read.
```

### Comment 2: commenter 1, 2008-05-25 16:33 UTC

```
Papers should really only be readable if you're right by them. It's a tiny bit
unrealistic that you can read a communications intercept from 30 feet away.
```

### Comment 3: commenter 3, 2008-05-26 16:29 UTC

```
Well it's a good thing the bridge camera is right next to the comms terminal and not
30 feet away
```

### Comment 4: commenter 2, 2008-05-26 16:50 UTC

```
It's too bad the AI's cameras are only 320x240 and can't make out the letters
```

### Comment 5: commenter 2, 2008-05-26 16:51 UTC

```
Actually on second thought let's make the AI cameras able to read papers from a
square away as well - that way you can hold notes up to the AI for it to read...
secret things like "switch to XYZ frequency" :)
```

### Comment 6: commenter 11, 2008-06-14 18:07 UTC

```
Patch Changes:
Camera User and AI are used interchangeably in these notes- all the changes apply to
people viewing through security terminals, as well as the AI.
- Camera Users can read papers on floor/table up to 1 square away. Cannot read
anything in a player's hand (presumably the player rolls up the paper, or holds it in
some manner that prevents the camera user from seeing it.
- Attempts by the Camera User to view a paper >1 square away, will still pop a window
but it'll pop up the *d out version (like when you try to read as a monkey)
- If you want to pass a note to the AI/Camera User privately, you can *use* the paper
on the camera if you're in range, this will hold the note up to the camera and pop a
window on the AI. Interesting side effect of this that while unintentional, kind of
makes sense, is that if the AI cancels out of viewing the camera, but doesn't switch
to another one, you can still show it the note (RP justification is that the AI is
multitasking and semi paying attention to the camera while it's working on other things).
- Camera Users viewing a camera will now be disconnected when some mexican^h traitor
comes along and uses wire cutters on the camera, the AI gets a message about a loss
of comms, people using camera stations get a message about a burst of static and get
kicked out of the camera computer.

In case it matters when applying (only just realized this) my patches all have spaces
instead of tabs for the indent as a side effect of select-copy'ing it out of my
terminal window (too lazy to redir svn diff to a file on my server, then sftp it over
to my desktop). If this is a problem let me know and I can regen the patches with
tabs instead.
```

- Attachment [camerafixes.isno.patch.txt](attachments/68_1655013541390391787_camerafixes.isno.patch.txt), 3,054 bytes

### Comment 7: commenter 1, 2008-06-15 11:54 UTC

*(no text)*

### Comment 8: commenter 11, 2008-06-20 03:10 UTC

```
new svn patch
```

- Attachment [camerafixes.svn.patch](attachments/68_3896637795885052803_camerafixes.svn.patch), 2,258 bytes

### Comment 9: commenter 1, 2008-06-20 14:20 UTC

```
applied
```
