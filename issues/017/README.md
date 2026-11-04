# Issue 17: Additional MOTD for authenticated users

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-22 02:00 UTC |
| Last comment | 2008-07-23 02:17 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/17 |

## Comments

### Comment 0: commenter 4, 2008-05-22 02:00 UTC

```
There should be an additional MOTD section for after a user authenticates, 
for 'secure' information (such as the link to IRC) wuold be placed here. 
```

### Comment 1: commenter 2, 2008-06-30 01:16 UTC

```
Quick fix - no reason to show the MOTD to people that aren't authorized.

People are given the "you must first authorize bla bla bla..." Message if auth fails,
otherwise upon success shows /MOTD.TXT (if it exists).
```

- Attachment [motd_unstable.patch](attachments/17_-3733207119789926497_motd_unstable.patch), 1,062 bytes

### Comment 2: commenter 1, 2008-06-30 11:51 UTC

```
sure there is - something like rick's "only goons are allowed!!!!!!!!!!" message is
good to show.
```

### Comment 3: commenter 2, 2008-06-30 18:44 UTC

```
Since the authorization code is fairly server specific perhaps it's message could be
customized to say that?

Either way it's fairly easy to rename MOTD to "pre-auth motd" and "post-auth motd" if
that's rEAaalllly what you want
```

### Comment 4: commenter 1, 2008-07-10 18:44 UTC

*(no text)*

### Comment 5: commenter 24, 2008-07-22 23:10 UTC

```
Attached provides a joining message of the day ("motd.txt"), authorized motd
("motd-auth.txt"), and non-authorized motd ("motd-noauth.txt")
```

- Attachment [auth motd.patch](attachments/17_1409184958334937962_auth%20motd.patch), 2,416 bytes

### Comment 6: commenter 1, 2008-07-23 02:17 UTC

*(no text)*
