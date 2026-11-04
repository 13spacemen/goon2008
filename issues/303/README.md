# Issue 303: APU hacking

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Defect, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-10-17 21:36 UTC |
| Last comment | 2008-10-18 02:03 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/303 |

## Comments

### Comment 0: commenter 24, 2008-10-17 21:36 UTC

```
&quot;APUs to the best of my knowledge are completely secure, immune not only to
manipulation but even disassembly until swiped with an appropriate ID card.&quot; 
Strudel Man (from thread)

APUs should be hackable
```

### Comment 1: commenter 43, 2008-10-18 02:03 UTC

```
I have added some rudimentary changes that make APCs far less invulnerable.  As a
final change I think APCs having a wire menu like airlocks would be preferable but
that would mean me figuring out the HTML stuff and HTML can go to hell.

Therefore, the smaller changes are currently:
Crowbar on locked and coverlocked APCs will sleep for 10 seconds and then break the
cover lock.

Wirecutters on open APCs now take 5 seconds to cut the AI wire.

Multitools on open APCs will sleep for 10 seconds and then unlock the APC.
```

- Attachment [APC-changes.patch](attachments/303_-1650623201178380031_APC-changes.patch), 1,431 bytes
