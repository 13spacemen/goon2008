# Issue 200: pipe filters (and other controllable atmos elements) should require ID to operate

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-15 04:57 UTC |
| Last comment | 2008-07-21 18:56 UTC |
| Comments | 6 |
| Archive page | https://code.google.com/archive/p/ss13/issues/200 |

## Comments

### Comment 0: commenter 11, 2008-07-15 04:57 UTC

```
[quote=&quot;Necronomiconomist&quot;]
I know part of it is because it is new, but it seems like we can't have a
round go by without someone contaminating the vast majority of the station
via the new circulation system.  Creed had a nice little habit of torching
/ CO2ing / N20ing medbay every round for three rounds straight.

You need a rather specific ID to access an APC to turn off the power to a
room, but flooding it with toxic gases is a hell of a lot easier.  It's
really powerful, and it's really easy to wreck a lot of the station fast,
with no easy way to repair it. Especially with how hard gas masks and O2
tanks are to come by now.  

I really like the system, and it's beautifully implemented, but I feel like
it needs something to make it a bit more challenging to use effectively.
[/quote]


```

### Comment 1: commenter 22, 2008-07-15 05:27 UTC

```
How about visual indicators on the filters. Just make the various LED's light up.
```

### Comment 2: commenter 11, 2008-07-19 19:19 UTC

```
adds:
- overlays to pipe filter, plasma/n2o = red light, o2 = green, n2 = blue, co2 = yellow
- ID restriction- you need atmos access to tinker with the filter

fixes:
- various broken things in the ID computer
- pipe filters no longer filter when the power is out

things persh said were broken but werent:
- fingerprints, you DO leave prints on the pipefilter, but only if you access Topic()
- ie you make a change, looking but not touching does not leave prints.
```

- Attachment [pipes2.dmi](attachments/200_-6272320019438799408_pipes2.dmi), 2,255 bytes
- Attachment [pipefilterfixes.diff](attachments/200_1203489235482497537_pipefilterfixes.diff), 4,441 bytes

### Comment 3: commenter 11, 2008-07-20 02:15 UTC

```
Comment deleted
```

- Attachment pipefilterfixes2.diff, 3,978 bytes: **not recovered**

### Comment 4: commenter 11, 2008-07-20 02:18 UTC

```
added close button so persh would stop whining, updated to compile with kelson's gas
changes.
```

- Attachment [pipefilterfixes2.diff](attachments/200_1496560236320394601_pipefilterfixes2.diff), 3,980 bytes

### Comment 5: commenter 1, 2008-07-21 18:56 UTC

*(no text)*
