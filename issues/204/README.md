# Issue 204: Infrared beam/prox sensor does not travel through reinforced window.

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-21 14:38 UTC |
| Last comment | 2008-07-31 03:38 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/204 |

## Comments

### Comment 0: commenter 25, 2008-07-21 14:38 UTC

```
Currently, infrared beams and proximity sensors do not work through
reinforced windows. Not sure if they work for normal windows.
```

### Comment 1: commenter 25, 2008-07-22 05:09 UTC

```
Also doesn't travel through normal windows.
```

### Comment 2: commenter 25, 2008-07-23 20:24 UTC

```
On second thought, proximity devices shouldn't travel through windows. But infrared
beams SHOULD.
```

### Comment 3: commenter 11, 2008-07-31 01:42 UTC

```
infrared does currently pass through glass and rglass (though not glass doors) on
unstable, however persh merged the patch from #152 which breaks this on his stable server
```

### Comment 4: commenter 11, 2008-07-31 02:17 UTC

```
should be resolved by patch in  issue #152 (technically it was already fixed, but
it's more fixed now since lasers travel through windoors)
```

### Comment 5: commenter 1, 2008-07-31 03:38 UTC

*(no text)*
