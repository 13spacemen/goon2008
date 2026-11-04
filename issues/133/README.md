# Issue 133: User shows up as "Unknown" when holding ID card in hand and trying to do something

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-21 16:12 UTC |
| Last comment | 2008-07-06 19:45 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/133 |

## Comments

### Comment 0: commenter 11, 2008-06-21 16:12 UTC

```
<b>What steps will reproduce the problem?</b>
1. Move ID from wear_id to a hand
2. Try to lock/unlock a secure closet.

<b>What is the expected output? What do you see instead?</b>
Should see: &quot;The locker has been locked by &lt;name&gt;.&quot;
Actually see: &quot;The locker has been locked by Unknown.&quot;

Patch soon with fix, in UpdateClothing look for ID cards in left/right
hands, as well as the wear_id slot when updating mob.name
```

### Comment 1: commenter 11, 2008-06-21 16:15 UTC

```
patch
```

- Attachment [unknownidfix.svn.patch](attachments/133_4058039278440227392_unknownidfix.svn.patch), 1,052 bytes

### Comment 2: commenter 1, 2008-06-21 16:59 UTC

*(no text)*

### Comment 3: commenter 2, 2008-06-30 01:59 UTC

```
This patch appears to update code that now [/unstable] resides in:
/code/game/mob/carbon/equipment.dm
in the section:
/mob/carbon/proc/update_name()

But I think the code in question has been changed too much for the patch to apply,
and I don't really know what's going on. So I'll leave this alone for now. Hopefully
that info will help save someone time.
```

### Comment 4: commenter 1, 2008-07-06 19:45 UTC

*(no text)*
