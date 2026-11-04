# Issue 321: Flamethrowers

| Field | Value |
|---|---|
| Status | Accepted |
| Labels | Type-Enhancement, Priority-Low, Branch-Kelson |
| Stars | 0 |
| Opened | 2009-01-04 15:50 UTC |
| Last comment | 2009-01-07 04:48 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/321 |

## Comments

### Comment 0: commenter 50, 2009-01-04 15:50 UTC

```
Here is my patch for flamethrowers.
```

- Attachment [flamethrower.txt](attachments/321_5490306202746210753_flamethrower.txt), 3,129 bytes

### Comment 1: commenter 24, 2009-01-07 01:52 UTC

```
While there were a few issues, thanks for contributing. I took your code, put it in
unstable, then attached the below patch for quick reference. A couple items quick
suggestions...

- Always provide a reversion/branch where possible (your code was semi-clearly /stable)
- Use an svn utility to create patches (like the attached via TortoiseSVN)
- Only item declarations are located in atoms.dm; functions are demo.dm
- Your code creates plasma out of nowhere (throw_amount < gas.plasma*gas.temp/25)

Good first attempt and I'd love to see the icons you mentioned. Please feel free to
hit me up on IRC!
```

- Attachment [kremvax.patch](attachments/321_-4901935571010112905_kremvax.patch), 2,854 bytes

### Comment 2: commenter 50, 2009-01-07 03:53 UTC

```
Last time I sent Persh a patch he didn't like it.
```

### Comment 3: commenter 24, 2009-01-07 04:48 UTC

```
Patches are good for this kind of site (particularly for referring back to old patches)
```
