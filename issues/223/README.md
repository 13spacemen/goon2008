# Issue 223: blood type gene

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-28 02:21 UTC |
| Last comment | 2008-07-28 02:55 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/223 |

## Comments

### Comment 0: commenter 11, 2008-07-28 02:21 UTC

```
added a blood type gene (for when we eventually add blood evidence etc and
for quick typing and matching of victims) 

should probably be added to medical records too I guess?
```

- Attachment [bloodtype.unstable.patch](attachments/223_-6946226411935127428_bloodtype.unstable.patch), 1,942 bytes

### Comment 1: commenter 11, 2008-07-28 02:42 UTC

```
rewritten to not (ab)use pick_attribute, and also uses pick instead of my own custom
random blood type determiner
```

- Attachment [bloodtype.unstable.v2.patch](attachments/223_1640213937866083682_bloodtype.unstable.v2.patch), 2,370 bytes

### Comment 2: commenter 11, 2008-07-28 02:51 UTC

```
test results:

$ ./test.sh 
loading unstable.dme
loading interface/skin.dmf
loading maps/Space Station 13.dmp
saving unstable.dmb (DEBUG mode)
Build succeeded.
Sun Jul 27 22:49:40 2008
World opened on network port 6001.
Welcome BYOND! (4.0 Version 419.985)
O+ : 3723 - 37.23%
O- : 645 - 6.45%
A+ : 3579 - 35.79%
AB+ : 333 - 3.33%
B+ : 905 - 9.05%
A- : 616 - 6.16%
AB- : 51 - 0.51%
B- : 148 - 1.48%

matches up +/-1% with expected distribution.
```

### Comment 3: commenter 1, 2008-07-28 02:55 UTC

*(no text)*
