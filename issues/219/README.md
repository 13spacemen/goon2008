# Issue 219: pipe valves on canisters don't seem to work in unstable

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Critical |
| Stars | 0 |
| Opened | 2008-07-24 18:22 UTC |
| Last comment | 2008-07-29 03:33 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/219 |

## Comments

### Comment 0: commenter 1, 2008-07-24 18:22 UTC

```
1. go to the place below the brig
2. set the n2o canisters to release
3. wait a while
4. oh wait theres nothing coming out

also they can drain from an oxy tank put not put back into it
```

### Comment 1: commenter 11, 2008-07-28 04:06 UTC

```
fixes broken ass pipe system changes kelson merged in (it was never giving ndelta a
value before multiplying it, leading to nothing ever exchanging gases)

also fixes broken /datum/substance/gas/proc/transfer which was preventing people from
transferring into tanks in atmoalter canisters
```

- Attachment [pipeandgasfixes.unstable.patch](attachments/219_9073508234755558559_pipeandgasfixes.unstable.patch), 2,328 bytes

### Comment 2: commenter 1, 2008-07-28 21:10 UTC

```
i've applied that, there are still major issues with equilibrium and stuff not going
through doors in the brig
```

### Comment 3: commenter 11, 2008-07-29 03:05 UTC

```
submitted a patch to #177 (Gas Diffusion)
```

### Comment 4: commenter 1, 2008-07-29 03:33 UTC

*(no text)*
