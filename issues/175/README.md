# Issue 175: Cleaning up the Code

| Field | Value |
|---|---|
| Status | WontFix |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-04 03:46 UTC |
| Last comment | 2008-07-08 20:15 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/175 |

## Comments

### Comment 0: commenter 24, 2008-07-04 03:46 UTC

```
Maintainability Enhancement

By and large, the current code is undocumented, unorganized, and abounds
with very complex sets of statements. I propose this issue for cleaning up
major (particularly often called) functions. The target of opportunity at
the moment is /atom/DblClick() from items.dm (containing a 7-comparison
compound if statement).

Corrected two bugs:
1) Unconscious players could throw items (is_active() check moved to start)
2) When clickin ne/nw/se/sw, if the path north/south was clear, but not the
east/west, the player would not pick up the item even if east/west then
north/south would have worked

```

### Comment 1: commenter 24, 2008-07-04 15:06 UTC

```
Left off the patch...
```

- Attachment [dblclick.patch](attachments/175_1248319970188034981_dblclick.patch), 11,907 bytes

### Comment 2: commenter 1, 2008-07-08 20:03 UTC

```
if(!ok)	{	D.loc = usr.loc; T = get_step(usr, EAST); if(T.Enter(D, src)) {	D.loc = T;
T = src.loc;  if(T.Enter(D, src)) ok = 1 } }

this is not "clean"
```

### Comment 3: commenter 1, 2008-07-08 20:15 UTC

```
I've applied the two bugfixes from this, the rest of it is trying to turn byond into
some C-like abomination and can rot in hell.
```
