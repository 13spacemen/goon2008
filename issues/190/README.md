# Issue 190: Grab Breaking Bug

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-11 00:58 UTC |
| Last comment | 2008-07-11 01:33 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/190 |

## Comments

### Comment 0: commenter 24, 2008-07-11 00:58 UTC

```
/obj/screen/grab/interact()

if(G.state == 1) // grabbed
else if(G.state == 2) // grabbed aggressively by hands
else if(G.state == 2) // never executed!

changed to:

if(G.state == 1) // grabbed
else if(G.state == 2) // grabbed aggressively by hands
else if(G.state == 3) // grabbed aggressively by throat

/client/Move(n,direct)

Same bug as above and a monstrous 10-indent function (greatly reduced now)
```

- Attachment [grab.patch](attachments/190_6225981960821132791_grab.patch), 6,322 bytes
- Attachment [client.patch](attachments/190_-7185278104204942503_client.patch), 7,259 bytes

### Comment 1: commenter 1, 2008-07-11 01:33 UTC

```
fyi, del(src) automatically returns from the function, so some of your cleanup is not
only uglier but doesn't work.

bugfixes applied, "cleanup" not.
```
