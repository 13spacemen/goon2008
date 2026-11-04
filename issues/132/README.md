# Issue 132: Injection messages missing a field in show_message

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-21 04:40 UTC |
| Last comment | 2008-07-06 16:44 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/132 |

## Comments

### Comment 0: commenter 11, 2008-06-21 04:40 UTC

```
When you inject someone, you get the following message:
You inject  units into Ragzilla. The syringe contains 5 units.

Looking through the code, it seems amount is being overwritten in 
/obj/item/weapon/syringe/proc/inject (items.dm:4500) by a call to
src.chem.transfer_mob (which I guess is supposed to return a value).

Will submit a patch tomorrow.
```

### Comment 1: commenter 13, 2008-06-21 05:47 UTC

```
Speaking of injections, why do they sometimes leave 0.00013 units in the syringe 
with no way to use it?  I don't get it, you either injected the unit or not.
```

### Comment 2: commenter 1, 2008-06-21 14:35 UTC

```
Basically, Exadv used floating point numbers even when he had no business whatsoever
doing so.
```

### Comment 3: commenter 11, 2008-06-21 16:42 UTC

```
attached patch that rounds stuff off before display and such, also fixed lack of
return value from the inject proc so it doesn't leave that field empty:

Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 5 units into Ragzilla. The syringe contains 10 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 5 units into Ragzilla. The syringe contains 5 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 4.99 units into Ragzilla. The syringe contains 0 units.
You draw 5 units from the bottle. The syringe contains 5 units.
You draw 5 units from the bottle. The syringe contains 10 units.
You draw 5 units from the bottle. The syringe contains 15 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 5 units into Ragzilla. The syringe contains 10 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 5 units into Ragzilla. The syringe contains 5 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 4.99 units into Ragzilla. The syringe contains 0 units.
Ragzilla is trying to inject Ragzilla!
Ragzilla injects Ragzilla with the syringe!
You inject 0 units into Ragzilla. The syringe contains 0 units.

```

- Attachment [syringefix.svn.patch](attachments/132_7852459887765879811_syringefix.svn.patch), 1,713 bytes

### Comment 4: commenter 1, 2008-06-21 16:59 UTC

*(no text)*

### Comment 5: commenter 2, 2008-06-30 02:05 UTC

```
/unstable fork version of this patch
```

- Attachment [syringe_unstable.patch](attachments/132_-9007297459801538401_syringe_unstable.patch), 1,682 bytes

### Comment 6: commenter 1, 2008-07-06 16:44 UTC

*(no text)*
