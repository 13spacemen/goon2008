# Issue 74: Move things from instance data in map to the actual code

| Field | Value |
|---|---|
| Status | WontFix |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-25 16:24 UTC |
| Last comment | 2008-08-23 18:06 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/74 |

## Comments

### Comment 0: commenter 1, 2008-05-25 16:24 UTC

```
For example, right now there's no reference in the code to the different
types of data disks (explicitly), or to the access levels for the various
security lockers, etc. Moving all this data from the map into the .dm files
would make editing things easier, as well as make it much easier to make a
new map and probably reducing the size of the map file (and, depending on
how smart BYOND's netcode is, also possibly reducing lag because instance
data doesn't have to be sent every time you encounter a new item).
```

### Comment 1: commenter 24, 2008-08-23 18:06 UTC

```
A general design principle is using generic objects which are fleshed out through
instance data (for example, in the map file). The same amount of data needs to be
sent regardless.
```
