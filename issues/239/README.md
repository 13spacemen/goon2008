# Issue 239: can't talk from inside gene machine

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 14:05 UTC |
| Last comment | 2008-08-02 22:01 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/239 |

## Comments

### Comment 0: commenter 11, 2008-07-31 14:05 UTC

```
00:36 &lt; Kurper&gt; talking inside a gene machine doesnt work
00:36 &lt; Kurper&gt; you cant be heard
```

### Comment 1: commenter 11, 2008-08-02 21:05 UTC

```
well, other people can hear you, but you can't hear them, and you can't hear yourself.

intentional?
```

### Comment 2: commenter 11, 2008-08-02 21:35 UTC

```
added special case for hearing inside DNA machine (implements hear_message)
```

- Attachment [dna_machine_hearing.unstable.patch](attachments/239_1330161103615177798_dna_machine_hearing.unstable.patch), 487 bytes

### Comment 3: commenter 1, 2008-08-02 22:01 UTC

*(no text)*
