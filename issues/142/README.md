# Issue 142: APC Capacity Changes

| Field | Value |
|---|---|
| Status | Duplicate |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-24 07:37 UTC |
| Last comment | 2008-06-24 14:11 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/142 |

## Comments

### Comment 0: commenter 2, 2008-06-24 07:37 UTC

```
The code originally called for two cell types, a &quot;High capacity&quot; and a
&quot;normal&quot; cell, as defined by the attribute cell_type. This affected icon
selection and capacity.

To give the mapmakers more power (ho ho ho), I have converted the cell_type
to simply be the stored capacity.

Old maps will have to be updated;
 cell_type = 0 (start with no cell installed - this is still true)
 cell_type = 1 (should now be 1000)
 cell_type = 2 (should now be 2500)

or fill in whatever value you feel necessary.

This patch also adjusts some values - definition of &quot;high capacity&quot; is now
2500+ instead of 1000+ (since everyone seems to use hicap in their maps
anyway, so it should be the norm).

Also moves the CHARGERATE defined variable from the atoms.dm file to
globals.dm for easy editing (this is how fast the powercells recharge). It
defaults to 0.002.

Issue #141 patch applied before I made this patch, if that makes any
difference.
```

- Attachment [apc_capacity_patch.patch](attachments/142_6111072741857993190_apc_capacity_patch.patch), 3,764 bytes

### Comment 1: commenter 2, 2008-06-24 07:40 UTC

```
Comment deleted
```

### Comment 2: commenter 2, 2008-06-24 07:55 UTC

```
Actually close this issue I'm making a new one with further changes, I'm
conglomerating them
```

### Comment 3: commenter 1, 2008-06-24 14:11 UTC

*(no text)*
