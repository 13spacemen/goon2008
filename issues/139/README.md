# Issue 139: AI Can't Suicide

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-24 01:32 UTC |
| Last comment | 2008-06-29 20:51 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/139 |

## Comments

### Comment 0: commenter 2, 2008-06-24 01:32 UTC

```
The Suicide verb works for AI but doesn't actually do anything. Recommend
customizing it to &quot;Powering self down...&quot; message and allowing it.
```

### Comment 1: commenter 2, 2008-06-29 19:07 UTC

```
Looks like Silicon types get electrical damage instead of suffocation now, but death
still doesn't occur. Probably something about how silicon doesn't gasp or something.

Until we get that figured out though here's a quick update that just changes the
death message to "powering down" instead of "holding breath".
```

- Attachment [suicide_silicon_unstable.patch](attachments/139_3355556095027776167_suicide_silicon_unstable.patch), 703 bytes

### Comment 2: commenter 1, 2008-06-29 20:51 UTC

*(no text)*
