# Issue 40: Easier radio-transmit

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium, Branch-InSpaceNoOneCanHearYouSayNo |
| Stars | 0 |
| Opened | 2008-05-22 14:16 UTC |
| Last comment | 2008-06-04 00:49 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/40 |

## Comments

### Comment 0: commenter 2, 2008-05-22 14:16 UTC

```
[h]This is a stupid way to transmit radio stuff

[h]We should replace it with a verb like rsay or hsay or something
```

### Comment 1: commenter 5, 2008-05-22 16:20 UTC

```
I like this idea, but in the meantime, you can just enable the microphone on your
headset (click on it while it's in your hand). This will transmit everything you say
by default. You would have to disable the mic again if you wanted to have a private
local conversation, though.
```

### Comment 2: commenter 2, 2008-05-22 16:23 UTC

```
hm...

perhaps in name of realism or immersion or whatever should simply just remove the [h]
shortuct?
```

### Comment 3: commenter 1, 2008-05-22 17:34 UTC

```
That's a poor way to do it hskelter, because (generally) you want to have private
conversations more than you want to broadcast everything, and disabling your headset
is way more effort that typing [h]. The bracket thing is a bad way to do it, though -
maybe say "\h blah" or say "/h blah"? It shouldn't take up three whole characters.
Even say "/blah" or say "/ blah" might work, for bonus ease.

Having an additional verb is way more effort to type for people who actually know
about the chat button in the lower right, which lurch doesn't seem to.
```

### Comment 4: commenter 2, 2008-05-22 18:13 UTC

```
yeah just a slash would be great.

also shutup I know about that chat button [now]
```

### Comment 5: commenter 1, 2008-05-24 16:18 UTC

```
Comment deleted
```

- Attachment say uses slash, backslash.patch, 2,711 bytes: **not recovered**

### Comment 6: commenter 1, 2008-05-24 17:10 UTC

```
Here's a patch that uses say "/words" or say "/ words" for headset, say "\rwords" or
say "\r words" for right hand, and the same as right hand but with \l for left hand,
\w for whisper, and \i for intercom. This cuts the number of characters you need to
type if you use the chat button by 1/3 to 2/3 (or 3/4 if you normally do say "[h]
words"). 99% of the time, it'll be at least by half, because the headset it by far
the most commonly used radio thing.

I considered using forward slash for the non-headset ones too, but that would require
you to use a space after the slash for headset, which would nearly double the amount
of typing for most people.

now with AI and monkey working too
```

- Attachment [say uses slash, backslash.patch](attachments/40_521021498166033299_say%20uses%20slash_%20backslash.patch), 6,157 bytes

### Comment 7: commenter 1, 2008-06-03 19:49 UTC

```
As it turns out, "\l" already means something in byond because it's retarded, so \ is
out. I'm using : now instead.
```

### Comment 8: commenter 1, 2008-06-03 19:51 UTC

```
Maybe that wasn't the cause of the bug, but I'm sticking with : anyways because it's
much easier to type.
```

### Comment 9: commenter 1, 2008-06-04 00:49 UTC

```
fixed in my svn
```
