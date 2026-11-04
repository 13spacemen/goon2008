# Issue 53: Allow observing people to see through walls and ignore the lights being off

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-24 01:20 UTC |
| Last comment | 2008-07-06 19:47 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/53 |

## Comments

### Comment 0: commenter 1, 2008-05-24 01:20 UTC

```
ghosts should totally be omniscient, they don't need &quot;light&quot; or &quot;line of
sight&quot;.
```

### Comment 1: commenter 1, 2008-05-24 15:59 UTC

*(no text)*

### Comment 2: commenter 2, 2008-05-25 02:53 UTC

```
Cut n Paste from AI observation code should do the trick for this.
```

### Comment 3: commenter 2, 2008-06-30 05:38 UTC

```
Looks like the dead bodies would set all to visible, but when you go to observe
someone it takes on their vision properties. I just added a quick "if (dead)"
statement to the end of the observe verb that reinstates supervision.
```

- Attachment [death_observe_unstable.patch](attachments/53_-548870789495460468_death_observe_unstable.patch), 558 bytes

### Comment 4: commenter 1, 2008-07-06 19:47 UTC

*(no text)*
