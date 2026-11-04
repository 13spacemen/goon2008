# Issue 257: req_access_txt set on many things that don't need it

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-08-05 01:43 UTC |
| Last comment | 2008-08-06 21:03 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/257 |

## Comments

### Comment 0: commenter 11, 2008-08-05 01:43 UTC

```
req_access_txt is set on many instances that don't need it (id computer,
comm console), and in many cases is set incorrectly off an old version of
the indexes. This patch cleans this up and moves the majority of the access
stuff into the code using the req_access var. The only special cases left 
(other than doors) are:

Toxlab Mass Driver
Toxlab Security Camera
Engineering Siphon Control


```

- Attachment [mapaccessfixes.unstable.patch](attachments/257_6274180651285310708_mapaccessfixes.unstable.patch), 26,691 bytes

### Comment 1: commenter 1, 2008-08-06 21:03 UTC

*(no text)*
