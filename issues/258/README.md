# Issue 258: Players shouldn't be able to use html in speech

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-08-05 02:49 UTC |
| Last comment | 2008-08-16 18:03 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/258 |

## Related SVN revisions

Commits whose log message cites this issue:

- r545, 2008-08-16, kelson, `2e9946cf6` on `/branches/kelson/unstable`: Issue 258: Player HTML in speech
- r546, 2008-08-16, kelson, `38be5f703` on `/branches/kelson/unstable`: Issue 258: Block HTML in Player Speech/Input

## Comments

### Comment 0: commenter 22, 2008-08-05 02:49 UTC

```
Things like OOC: Mike88511: &lt;font size=100&gt; &lt;font color=red&gt; &lt;text&gt;
actually work.

This is bad.

 
```

### Comment 1: commenter 24, 2008-08-14 02:29 UTC

```
Relevant Changes:
- sanitize calls html_encode at end of function
- all calls to html_encode replaced with size-limiting sanitize

```

- Attachment [html_speech.patch](attachments/258_-4240578411295443674_html_speech.patch), 6,718 bytes

### Comment 2: commenter 22, 2008-08-14 04:10 UTC

```
you forgot admin announce
```

### Comment 3: commenter 11, 2008-08-14 12:02 UTC

```
that could be a good thing..
```

### Comment 4: commenter 24, 2008-08-14 21:03 UTC

```
That was intentional
```

### Comment 5: commenter 24, 2008-08-15 04:37 UTC

```
Bug Fix: stutter incorrectly handled escaped html (convert back to normal, stutter,
then conver to escaped html) - thanks Persh for pointing it out
```

- Attachment [html_speech v2.patch](attachments/258_4095961629848198162_html_speech%20v2.patch), 6,890 bytes

### Comment 6: commenter 24, 2008-08-16 06:31 UTC

*(no text)*

### Comment 7: commenter 24, 2008-08-16 18:03 UTC

```
Relevant Changes:
- Sanitize now includes a defaulted (MAX_MESSAGE_LEN) length limit parameter
- Added text_input (auto-sanitize) and scrub_input (strips all html and sanitizes)
```

- Attachment [html_speech v3.patch](attachments/258_3762132636088627313_html_speech%20v3.patch), 14,812 bytes
