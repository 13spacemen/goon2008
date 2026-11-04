# Issue 141: APC Power Consumption

| Field | Value |
|---|---|
| Status | Duplicate |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-24 03:39 UTC |
| Last comment | 2008-06-24 14:10 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/141 |

## Comments

### Comment 0: commenter 2, 2008-06-24 03:39 UTC

```
Some maps that have odd/wacky setups have disproportionate power usage in
some rooms. This patch (based on Kurper's fork build #231) introduces three
attributes to the APC object (equip_consumption, environ_consumption, and
light_consumption) to artificially pump up the power usage.

This system works better than the artifical, invisible object-in-a-room
that could introduce bugs/lag/or even find an abusive workaround (such as
building a wall on the same tile as the power sink so that it stops working
properly).  With this patch I recommend removing the
/obj/mechanical/power_sink alltogether (but I left it in for this patch so
that it won't break the current map).

So that it does not break any previous maps all of these values default to
zero.
```

- Attachment [apc_consumption.patch](attachments/141_-4496825428611999332_apc_consumption.patch), 1,200 bytes

### Comment 1: commenter 2, 2008-06-24 03:54 UTC

```
Comment deleted
```

### Comment 2: commenter 2, 2008-06-24 07:31 UTC

```
Comment deleted
```

### Comment 3: commenter 2, 2008-06-24 07:42 UTC

```
Comment deleted
```

### Comment 4: commenter 2, 2008-06-24 07:54 UTC

```
Actually close out this ticket, later changes deprecated it

```

### Comment 5: commenter 1, 2008-06-24 14:10 UTC

*(no text)*
