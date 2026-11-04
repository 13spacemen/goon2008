# Issue 77: emagged airlocks still close if they're linked

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-26 16:19 UTC |
| Last comment | 2008-07-06 16:39 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/77 |

## Comments

### Comment 0: commenter 1, 2008-05-26 16:19 UTC

```
emag is supposed to totally destroy the electronics and make it unclosable,
as i understand it?
```

### Comment 1: commenter 11, 2008-06-21 15:24 UTC

```
should fix it, adds another .stat bitfield (EMAGGED) and if an airlock has that bit
set it will not open/close
```

- Attachment [emaggedairlocks.svn.patch](attachments/77_-2589916997148744406_emaggedairlocks.svn.patch), 2,158 bytes

### Comment 2: commenter 2, 2008-06-30 05:11 UTC

```
Aaaan an /unstable fork version of this patch. (thanks for all this hard work Maddi)
```

- Attachment [emagged_airlocks_unstable.patch](attachments/77_3505681770281498945_emagged_airlocks_unstable.patch), 2,113 bytes

### Comment 3: commenter 1, 2008-07-06 16:39 UTC

```
applied
```
