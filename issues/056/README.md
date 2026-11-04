# Issue 56: Damage icon does not update once 0 health is reached

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-24 17:01 UTC |
| Last comment | 2008-07-10 15:00 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/56 |

## Comments

### Comment 0: commenter 3, 2008-05-24 17:01 UTC

```
You can bludgeon someone to death forever and they'll still have legs or
something that look pristine because of the way the damage icon update is
handled.
 
```

### Comment 1: commenter 1, 2008-05-27 18:26 UTC

```
This patch makes weapons keep doing damage even if people are below -10 health. I
would also update the other code to make everything do this, but the damage code
makes me want to kill myself.
```

- Attachment [take arbitrary damage.patch](attachments/56_-4926383507892842944_take%20arbitrary%20damage.patch), 8,146 bytes

### Comment 2: commenter 1, 2008-05-29 17:30 UTC

```
A post on ss13.net made me realize that this patch might make people who get hit
while dead have stat set to 1 (unconscious) instead of 2 (dead) if they get "knocked
out." Please don't apply it until I've investigated this possibility.
```

### Comment 3: commenter 1, 2008-07-10 15:00 UTC

```
unstable has this feature already due to how it handles damage.
```
