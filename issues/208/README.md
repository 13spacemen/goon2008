# Issue 208: Randomize Syndicate Headsets

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-22 00:12 UTC |
| Last comment | 2008-07-28 02:24 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/208 |

## Comments

### Comment 0: commenter 32, 2008-07-22 00:12 UTC

```
Currently it is the same frequency each round which lets SS13 people listen
to everything said.
```

### Comment 1: commenter 11, 2008-07-22 01:17 UTC

```
alongside this we should probably implement a specific syndicate headset (with
encryption) so Kurper doesn't have to give them Spanish or something so SS13 can't
eavesdrop.
```

### Comment 2: commenter 1, 2008-07-22 02:52 UTC

```
uh what, spanish is clearly a superior option
```

### Comment 3: commenter 11, 2008-07-22 03:31 UTC

```
<following some junk on ideas for comm system rewrite>
00:14 < ragzilla> that whole 'let's add a comm room/job' issue
00:16 < PropagandaBob> it wouldn't be much of a job beyond 'make sure some jerk
doesn't blow up these consoles thx'
00:17 < Kurper> well
00:17 < Kurper> having someone monitor all the frequencies would be good
00:18 < ragzilla> yeah
00:18 < Kurper> and you could maybe split off the wiring part of station engineer and
add that
00:18 < ragzilla> AI should probably listen on all freqs too
00:18 < ragzilla> it is a computer after all
00:18 < Kurper> probably
00:19 < Kurper> would need to give the syndicate spanish before doing that though
00:19 < ragzilla> definitely
00:19 < ragzilla> or another frequency entirely
00:19 < Kurper> yeah
00:19 < ragzilla> but spanish would probably work
00:19 < Kurper> thatd allow stealing syndicate radios which would be cool
00:19 < ragzilla> but without the gene it'd be worthless
00:20 < Kurper> no i mean just giving them a special frequency
00:20 < Kurper> instead of a langauge
00:20 < Kurper> language
00:20 < ragzilla> in that case you could make it use regular freq
00:20 < ragzilla> but have the radio translate it
00:20 < Tumble> hey
00:20 < Kurper> yeah
00:20 < ragzilla> to lang_syndicateencrypted
00:20 < Kurper> that could also work

you said then it could also work! hah!

in either case, something needs to be in place to prevent SS13 from eavesdropping,
especially if/when the comm job comes in with it's super "listen on all frequencies"
radio
```

### Comment 4: commenter 11, 2008-07-22 03:32 UTC

```
i think the whole stealing syndicate radio idea gives a few points to the encrypted
radio option, since then you'd have to be somewhat careful to not die too stupidly or
you just compromised your teams comms...
```

### Comment 5: commenter 11, 2008-07-27 18:01 UTC

```
adds syndicate headsets with encryption, so they can't be trivially eavesdropped
adds LANGUAGE_ENCRYPTED (which is only used by these headsets)- preserves original
language/voice when sending encrypted- and encrypted messages are tagged with
(encrypted) on the end.
The radios can also receive unencrypted messages so the station can talk to the
syndicate (though the syndicate will need a different radio to send unencrypted to
talk back)
Also fixes various bugs in nuclear mode, where syndicate were never spawning with
people etc.
```

- Attachment [syndicateheadsets.unstable.patch](attachments/208_8744921021187234782_syndicateheadsets.unstable.patch), 5,484 bytes

### Comment 6: commenter 1, 2008-07-28 02:24 UTC

```
swear to god ragzilla if you left debug code in here too
```
