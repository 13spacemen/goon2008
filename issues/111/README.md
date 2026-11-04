# Issue 111: All (used) areas should have custom icons

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-16 17:54 UTC |
| Last comment | 2008-06-29 18:33 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/111 |

## Comments

### Comment 0: commenter 2, 2008-06-16 17:54 UTC

```
Mapmaking is a bitch with the standard gray blanket area look. We've got a
few down (engine, bridge, chapel) but the rest have to be updated too.

In my version of the new map - I colored in all the areas I used, and I
changed the &quot;default&quot; one to clear so that you can tell where deadspace is
(since everything has to be part of an area). Right now there is no way to
distinguish if someone is using &quot;prison&quot; or &quot;default (empty)&quot;, but adding
new icons is easy-peasy.
```

- Attachment [areas.dmi](attachments/111_4334299145285097578_areas.dmi), 3,307 bytes

### Comment 1: commenter 2, 2008-06-16 17:56 UTC

```
Of course I think we should remove all the unused areas from the list entirely.
There's a "start" area that does nothing but a "shuttle/start" area that is used and
that fucked me up for a long time.
```

### Comment 2: commenter 2, 2008-06-16 18:14 UTC

```
And here's the changes in areas.dm (it is a patch file I named poorly)
```

- Attachment [areas.dm](attachments/111_59911527196448_areas.dm), 2,761 bytes

### Comment 3: commenter 2, 2008-06-29 18:32 UTC

```
Looks like that patch was already rolled into /unstable but we still need the areas
icon file to be updated.
```

### Comment 4: commenter 1, 2008-06-29 18:33 UTC

*(no text)*
