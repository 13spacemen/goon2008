# Issue 245: The AI needs an overlay to help it determine what it can/cannot see

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 14:08 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/245 |

## Comments

### Comment 0: commenter 11, 2008-07-31 14:08 UTC

```
01:01 &lt; ragzilla&gt; ah, maybe use a combination of oview() and view() to
determine what turfs are viewable?
01:01 &lt; ragzilla&gt; (it was suggested we add a grey out overlay over areas
the AI cannot see)
01:10 &lt; Kurper&gt; ragzilla: yeah i think that'd be feasible
01:10 &lt; Kurper&gt; just use view()
```

### Comment 1: commenter 11, 2008-08-03 20:31 UTC

```
sets up overlays whenever the AI switches into a new camera, currently using the
gasmask overlay until someone whines and we figure out what overlay to use (the
current dither50/blurry either look like shit, or are confusing in dark areas) so
we'll probably have to settle on a dither12b or dither12r or something (ie make
red/blue copies of the current green dither the gasmask uses)
```

- Attachment [aicamoverlay.unstable.patch](attachments/245_3643424354159424137_aicamoverlay.unstable.patch), 3,591 bytes

### Comment 2: commenter 1, 2008-08-06 21:02 UTC

```
this patch also includes code for using variables on a client, why's that
```

### Comment 3: commenter 11, 2008-08-06 21:56 UTC

```
debugging / code didn't already support it
```

### Comment 4: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
