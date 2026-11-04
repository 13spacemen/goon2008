# Issue 69: Cold Loop not balanced

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-25 02:35 UTC |
| Last comment | 2008-07-10 19:55 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/69 |

## Comments

### Comment 0: commenter 2, 2008-05-25 02:35 UTC

```
Right now the engine power generated is determined by difference between
hot and cold loops; the cold loop warms up slightly during the energy
generation process. The problem is that the cold loop does TOO much - it
chills the pipes effectively even at a 1% setting.

However - you do get a significant boost to engine power if you set the
cold pipe to 100%. This makes the cold pipe chill very cold, thus
increaseing the temperature differential. This is more important the cooler
the engine is (if the engine is a bazillion degrees it doesn't matter so
much if you lower the cold loop by 50).

The problem with setting the cold loop to 100% is that that the CO2 runs
out pretty quick and it requires a lot of maintenance to upkeep it.

So the problem really is:
- the engine runs so hot there's no reason to lower cold loop temperature
- cold loop is too effective even at 1%

possible solutions:
- increase engine surface area (already in place in new map) so that
overall engine temperature is much harder to get to phenomenal numbers



**** - increase temperature gain on the cold loop as it runs through the
generator, forcing higher-than-1% values *****
```

### Comment 1: commenter 1, 2008-07-10 19:55 UTC

```
this is effectively fixed (well except on prototype engine, but screw the prototype
engine)
```
