# Issue 238: 'click to put object on something' doesn't work from non cardinal directions

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 14:04 UTC |
| Last comment | 2008-08-02 21:01 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/238 |

## Comments

### Comment 0: commenter 11, 2008-07-31 14:04 UTC

```
00:34 &lt; ragzilla&gt; can't click to put an item on a table
00:34 &lt; ragzilla&gt; from the SE, works from direct S
```

### Comment 1: commenter 11, 2008-08-02 19:59 UTC

```
"hey let's step the item toward the table, instead of just putting it on there- after
all it's not like DblClick hasn't already checked if we can interact with the table!
oh wait... it has..."

this was caused by the way step() was working, it only tested for a counter-clockwise
path to the target turf, so if your counter-clockwise path was blocked it sent it a
step clockwise and dropped on the floor. Let's just sidestep the issue so nothing
else that uses step is affected...

also fixes racks.
```

- Attachment [clicktoplace.unstable.patch](attachments/238_4259839114165270678_clicktoplace.unstable.patch), 608 bytes

### Comment 2: commenter 1, 2008-08-02 21:01 UTC

*(no text)*
