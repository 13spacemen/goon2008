# Issue 41: Mute text while unconscious

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-22 17:04 UTC |
| Last comment | 2008-06-04 00:50 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/41 |

## Comments

### Comment 0: commenter 2, 2008-05-22 17:04 UTC

```
While asleep/unconcious you can currently hear people. This should be
disabled.... buuut

I don't like the idea of it disappearing completely. Can we replace it with
some italicized:

.. You hear faint voices ...

?
```

### Comment 1: commenter 7, 2008-05-24 16:45 UTC

```
A pretty simple patch. It seemed best to catch the text just before actual printing,
in show_message. Invariably the say verb is horribly inconsistent, so this patch
probably doesn't catch all the desired cases.

Unfortunately BYOND didn't want to play ball under WINE, so this patch is un-tested,
it compiled without warning though.
```

- Attachment [sleeping and unconscious voice muffling - isno.patch](attachments/41_7773848599121367454_sleeping%20and%20unconscious%20voice%20muffling%20-%20isno.patch), 437 bytes
- Attachment [sleeping and unconscious voice muffling - trunk.patch](attachments/41_2039172421277928308_sleeping%20and%20unconscious%20voice%20muffling%20-%20trunk.patch), 437 bytes

### Comment 2: commenter 1, 2008-05-24 19:08 UTC

*(no text)*

### Comment 3: commenter 1, 2008-06-04 00:50 UTC

```
fixed in my svn
```
