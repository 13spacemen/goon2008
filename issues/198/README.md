# Issue 198: You should be able to swap clothes for other clothes

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-15 01:00 UTC |
| Last comment | 2008-07-15 16:39 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/198 |

## Comments

### Comment 0: commenter 11, 2008-07-15 01:00 UTC

```
So I uh, wrote this patch.

Milestone #1, supports all the current 'clothing' items. IE
mask/jumpsuit/outer suit/gloves/shoes/eyes/helmet (and swat_hel has been
moved under head/swat_hel so it doesn't break things, and other code
references (only 1 or two) updated to check for the new name).

still to come, swapping IDs, pocket and belt contents (but not your
backpack, since i firmly believe you need a hand free for that).
```

- Attachment [itemswap.unstable.v1.patch](attachments/198_-7182110833597949037_itemswap.unstable.v1.patch), 14,581 bytes

### Comment 1: commenter 11, 2008-07-15 03:33 UTC

```
now with 100% less dependance on direct inheritance since kurper complained about it
(also doesn't rename swat_hel and such).

also adds ID/headset swapping.
```

- Attachment [itemswap.unstable.v2.patch](attachments/198_6882667454735325341_itemswap.unstable.v2.patch), 12,463 bytes

### Comment 2: commenter 11, 2008-07-15 04:07 UTC

```
final version, belt and pocket support, all inventory slots supported now (except for
backpack).
```

- Attachment [itemswap.unstable.v3.patch](attachments/198_-8896018764566025833_itemswap.unstable.v3.patch), 13,973 bytes

### Comment 3: commenter 1, 2008-07-15 16:39 UTC

*(no text)*
