# Issue 19: Reorganize mob code

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 02:18 UTC |
| Last comment | 2008-07-06 16:25 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/19 |

## Comments

### Comment 0: commenter 4, 2008-05-22 02:18 UTC

```
The mob code is a mess, and partially due to this, the AI can be subject 
to drugs and other things.

To fix this, we need to break up the existing code better, eg

/mob
/mob/carbon/human
/mob/carbon/monkey
/mob/robot/ai

etc...
```

### Comment 1: commenter 1, 2008-05-22 02:37 UTC

```
It also seems like fire might be better suited to be a mob (although I don't know
much about the fire code). This'd also have the nice side-effect that thermals could
see it but mesons couldn't, which would make more sense than the current setup.
```

### Comment 2: commenter 1, 2008-05-22 02:45 UTC

```
Possibly some of the blob code could be reused for that, too? blob seems to be
basically the same thing as fire, except you can attack it and it feeds differently.
```

### Comment 3: commenter 1, 2008-05-27 18:58 UTC

```
oh it looks like blobs aren't mobs, for some reason
```

### Comment 4: commenter 1, 2008-07-06 16:25 UTC

```
done in unstable
```
