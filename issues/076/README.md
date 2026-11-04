# Issue 76: Combine all "X assistant" jobs into one "Assistant" job

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low |
| Stars | 0 |
| Opened | 2008-05-26 03:06 UTC |
| Last comment | 2008-07-06 16:40 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/76 |

## Comments

### Comment 0: commenter 1, 2008-05-26 03:06 UTC

```
Right now, most of the assistants' roles aren't all that clearly-defined,
and there's pretty significant overlap. They could, in my opinion, be
safely combined into one generic &quot;Assistant&quot; job with slightly greater
clearance, which is responsible for healing people, fixing minor things,
and being a guinea pig for tests. This'd give any given assistant more to
do, and would help stop the &quot;there is a huge hole in the station but all we
have are 8 medical assistants&quot; problem.
```

### Comment 1: commenter 2, 2008-06-29 22:34 UTC

```
Here's a patch up for some debate I'm sure.

 - Rolls all the assistants into a single "Assistant" job. This job has access to
medlab and maintenance tunnels, and starts them out with the old "Medical Assistant"
gear (so they have medipacks). This should give them a good shot at doing support (be
it medical or maintenance) without giving them too much access.

 - Rolls the Engineer and Station Technician jobs into one "Station Engineer" job.
This job has access to all the stuff Engineering did and all the stuff Station Techs
did (minus all_personnell_lockers). This change may be a bit controversial as they
lose access to Maintenance Tunnels. Since Assistants and Atmos both have access I
don't see why they should too - nothing to repair in there, just atmos cans really.
If they want to go outside they can go out and do their thing still. This also gives
engineers the ability to hook up the solar arrays.

 - Fixed up the job dispersions and access rights to match those two changes

note this patch will not play nice with old maps (You'll have to rename the assistant
and engineer spawn points)
```

- Attachment [jobchanges.patch](attachments/76_-392980053537659798_jobchanges.patch), 6,594 bytes

### Comment 2: commenter 1, 2008-07-06 16:40 UTC

```
applied, hope this works right
```
