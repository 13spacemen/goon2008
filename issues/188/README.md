# Issue 188: Sort Functions

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-10 02:10 UTC |
| Last comment | 2008-07-10 02:29 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/188 |

## Comments

### Comment 0: commenter 24, 2008-07-10 02:10 UTC

```
Some people asked for sorting functions...

Patch applies only to helpers.dm

sortList(var/list/L) - merge sort [O(n log n)] the list alphabetically
sortNames(var/list/L) - merge sort the list by atomic name alphabetically
mergeLists(L,R) - puts the two lists together, should not be called directly
```

- Attachment [MergeSort.patch](attachments/188_8556180587235728973_MergeSort.patch), 1,709 bytes

### Comment 1: commenter 1, 2008-07-10 02:29 UTC

```
applied (with whitespace added)
```
