# Issue 189: a pipe filter

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-10 04:23 UTC |
| Last comment | 2008-07-10 15:35 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/189 |

## Comments

### Comment 0: commenter 11, 2008-07-10 04:23 UTC

```
feature patch

adds a &quot;pipe filter&quot; which lets you extract specific gases out of a
pipeline, simply drop the filter between two pipelines (can't have a pipe
under the filter although in hindsight that would have been much easier).
for the pipes running &quot;through&quot; the filter it acts like a regular pass
through, but if the filter is turned on and told to filter certain gases it
will pull up to the specified amount out of it's gas pool, and shove it
into the red 'drop' pipe.

it also adds analyzer support for atmoalter/canister so you can see what's
really inside a canister.
```

- Attachment [pipefilter.unstable.patch](attachments/189_6891424181473334149_pipefilter.unstable.patch), 10,092 bytes
- Attachment [pipes2.dmi](attachments/189_8814192753892753282_pipes2.dmi), 653 bytes

### Comment 1: commenter 11, 2008-07-10 04:28 UTC

```
due to whitespace retardation it looks like the demo2.dm patch (atmoalter/canister
support for analyzers) fails, but it's not essential and can be packaged separately
if you don't feel like manually merging it.
```

### Comment 2: commenter 11, 2008-07-10 14:30 UTC

```
cleaner version with 100% less hacks to calc_delta

demo2.dm still doesn't apply clean with SVN generated patch :argh: but like before,
it's not crucial, just something nice to have.
```

- Attachment [newpipefilter.unstable.patch](attachments/189_8640180759866927614_newpipefilter.unstable.patch), 8,690 bytes

### Comment 3: commenter 1, 2008-07-10 15:35 UTC

*(no text)*
