# Issue 20: Random name generator

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Component-UI |
| Stars | 0 |
| Opened | 2008-05-22 02:25 UTC |
| Last comment | 2008-08-16 05:53 UTC |
| Comments | 12 |
| Archive page | https://code.google.com/archive/p/ss13/issues/20 |

## Related SVN revisions

Commits whose log message cites this issue:

- r541, 2008-08-16, kelson, `d67a147b3` on `/branches/kelson/unstable`: Issue #20: Random Player spawn names

## Comments

### Comment 0: commenter 4, 2008-05-22 02:25 UTC

```
Self explanatory.
```

### Comment 1: commenter 2, 2008-05-22 13:05 UTC

```
Oh man I want to take this one! assign to meeeeee

eta 2 days
```

### Comment 2: commenter 1, 2008-05-28 23:56 UTC

```
go for it
```

### Comment 3: commenter 2, 2008-06-16 02:25 UTC

```
Comment deleted
```

- Attachment isno_ai_names.patch, 1,373 bytes: **not recovered**
- Attachment isno_algo.patch, 716 bytes: **not recovered**
- Attachment isno_ai_names.patch, 1,373 bytes: **not recovered**

### Comment 4: commenter 2, 2008-06-16 02:26 UTC

```
Comment deleted
```

### Comment 5: commenter 2, 2008-06-16 02:27 UTC

```
DONE!

Tested/works/etc. For ISNO I recommend renaming the data file "AI NAMES" to just "NAMES".

randomnames   << TRUNK

isno_algo     << ISNO
isno_ai_names << ISNO
```

- Attachment [randomnames.patch](attachments/20_7656349781316568620_randomnames.patch), 2,970 bytes
- Attachment [isno_ai_names.patch](attachments/20_-95995604136299178_isno_ai_names.patch), 1,373 bytes
- Attachment [isno_algo.patch](attachments/20_405961343629108055_isno_algo.patch), 716 bytes

### Comment 6: commenter 1, 2008-06-16 04:36 UTC

```
those random names are awful

i would not name my child "Mediocre Vagina", especially if it was a boy
```

### Comment 7: commenter 24, 2008-07-23 00:02 UTC

```
Patch adds loading names from file (ai_names.txt, first_names.txt, last_names.txt),
configuration options to enable/disable random names (default ai only), and adds
random name ability for players! Should be ready for prime time, not much code is
touched.
```

- Attachment [random names v1.patch](attachments/20_3816876123838309258_random%20names%20v1.patch), 17,477 bytes

### Comment 8: commenter 24, 2008-07-23 00:03 UTC

```
Reused original AI names, but pulled 500 first/last names from random name generator
(seem fairly generic)
```

### Comment 9: commenter 24, 2008-08-16 05:51 UTC

```
Comment deleted
```

### Comment 10: commenter 24, 2008-08-16 05:52 UTC

```
Comment deleted
```

- Attachment random names v2.patch, 17,905 bytes: **not recovered**

### Comment 11: commenter 24, 2008-08-16 05:53 UTC

```
Didn't like how the last patch operated, this should be more user-friendly. Instead
of randomizing the player at start (like the AI), players are given a the option to
pick a spawn name (which can be randomized via the trademark symbol)
```

- Attachment [random names v2.patch](attachments/20_-5456738942804974735_random%20names%20v2.patch), 17,905 bytes
