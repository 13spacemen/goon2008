# Issue 250: character setup window shouldn't pop up til you're authenticated

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 16:09 UTC |
| Last comment | 2008-08-02 20:35 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/250 |

## Comments

### Comment 0: commenter 1, 2008-07-31 16:09 UTC

```
right now heres how things go:

login
check for bans
start auth test
pop up char setup window
can't ready until auth test is done

it should go like this imo:
login
check for bans
check for auth
pop up char setup window
```

### Comment 1: commenter 11, 2008-08-02 19:13 UTC

```
done

- removes the verb at login
- authorize readds the verb, and pops the window
```

- Attachment [delaycharsetup.unstable.patch](attachments/250_2243840746991615393_delaycharsetup.unstable.patch), 1,439 bytes

### Comment 2: commenter 1, 2008-08-02 19:40 UTC

*(no text)*

### Comment 3: commenter 11, 2008-08-02 20:33 UTC

```
Comment deleted
```

- Attachment charsetupfixes.unstable.patch, 1,526 bytes: **not recovered**

### Comment 4: commenter 11, 2008-08-02 20:35 UTC

```
fixes another race condition, and mob verbs still != client verbs
```

- Attachment [charsetupfixes.unstable.patch](attachments/250_-3996832495408756983_charsetupfixes.unstable.patch), 1,806 bytes
