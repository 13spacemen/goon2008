# Issue 87: Examine bombs should show temperature

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-26 23:05 UTC |
| Last comment | 2008-07-06 19:25 UTC |
| Comments | 13 |
| Archive page | https://code.google.com/archive/p/ss13/issues/87 |

## Comments

### Comment 0: commenter 2, 2008-05-26 23:05 UTC

```
When you examine a bomb it should give an indication on whether it looks
cold, warm, or hot. (hot probably being 500+, cold being less than room
temperature?)


```

### Comment 1: commenter 5, 2008-05-27 01:47 UTC

```
Perhaps Analyzers (of the type found in toolboxes) could be used to give the exact
temperature.
```

### Comment 2: commenter 11, 2008-06-13 01:56 UTC

```
attached patch, implements:

examine anything derived from /obj/item/weapon/tank/, get a reading on how full / how
hot it is (on a scale of cold/room temp/lukewarm/warm/hot)
use an analyzer on anything derived from /obj/item/weapon/tank/ (including ptank
assemblies- ie bombs) and get a listing of:
- how full it is
- what %age of each gas it contains
- the precise temp
```

- Attachment [tankexamine.patch.txt](attachments/87_-4521843349552371604_tankexamine.patch.txt), 4,896 bytes

### Comment 3: commenter 1, 2008-06-13 12:27 UTC

*(no text)*

### Comment 4: commenter 11, 2008-06-13 18:08 UTC

```
Comment deleted
```

- Attachment tankexamine.patch.ison.txt, 4,949 bytes: **not recovered**

### Comment 5: commenter 1, 2008-06-15 02:38 UTC

*(no text)*

### Comment 6: commenter 11, 2008-06-20 03:10 UTC

```
Comment deleted
```

- Attachment tankexamine.svn.patch, 4,003 bytes: **not recovered**

### Comment 7: commenter 1, 2008-06-20 14:24 UTC

```
Make it only work if you're right next to the thing - right now you can see how hot
it is from far away, which is silly.
```

### Comment 8: commenter 11, 2008-06-21 02:46 UTC

```
updated w/ range check, should apply clean to 204
```

- Attachment [tankexamine.svn.patch](attachments/87_474746317963475240_tankexamine.svn.patch), 4,031 bytes

### Comment 9: commenter 1, 2008-06-21 13:50 UTC

```
Examining bombs from far away still shows the heat, and you can't examine a tank at
all from more than 1 tile away, which is undesirable (everything else in the SS13
world is examinable from any distance).
```

### Comment 10: commenter 11, 2008-06-21 21:02 UTC

```
updated with requested fixes
- examining bombs and tanks from far away does not display heat
- you can now examine tanks from far away (i think this was how it was before..),
offending line in tank/examine: set src in view(1), in any case it's fixed now
- analyze and examining bombs picks better icons too
```

### Comment 11: commenter 11, 2008-06-21 21:03 UTC

```
whoops forgot to upload
```

- Attachment [tankexamine.svn.patch](attachments/87_7595826416714612469_tankexamine.svn.patch), 4,428 bytes

### Comment 12: commenter 1, 2008-07-06 19:25 UTC

*(no text)*
