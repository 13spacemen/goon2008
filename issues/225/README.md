# Issue 225: shuttle doors and walls (/obj/move) do not block airflow

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-29 04:36 UTC |
| Last comment | 2008-07-30 02:53 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/225 |

## Comments

### Comment 0: commenter 11, 2008-07-29 04:36 UTC

```
shuttle doors and walls should probably block airflow, offending code is in
cell_process.dm in the UpdateTurf and CheckAirflow procs.
```

### Comment 1: commenter 11, 2008-07-30 00:43 UTC

```
fixes obj/move not affecting airflow, also moves shuttle doors under obj/move
```

- Attachment [objmoveairflow.unstable.patch](attachments/225_7194539141620687405_objmoveairflow.unstable.patch), 5,071 bytes

### Comment 2: commenter 11, 2008-07-30 01:32 UTC

```
now (should) also fix issue #173 (Wall/Atmosphere Bug) where player made walls did
not block air diffusion
```

- Attachment [objmoveairflow.v2.unstable.patch](attachments/225_5483844186142577710_objmoveairflow.v2.unstable.patch), 12,745 bytes

### Comment 3: commenter 1, 2008-07-30 02:53 UTC

*(no text)*
