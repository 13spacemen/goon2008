# Issue 144: Job Assignment suggestion

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-24 20:17 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/144 |

## Comments

### Comment 0: commenter 2, 2008-06-24 20:17 UTC

```
Job assignments should be filled in order of importance; ie: captain slot
filled first, HoP/HoR second, maybe engineers, etc. - that way three
station technicians aren't assigned before a doctor or engineer is available.

This would only affect people that don't have a preference (or who's
preference has already been taken).

Also, instead of using /code/data/jobs.dm as a list to pick from, it should
pull the data from the map (/obj/start instances)
```

### Comment 1: commenter 11, 2008-07-12 22:13 UTC

```
this fulfills the first part of this somewhat, at the end of the 'preference' job
selection it will sort the rest of the people into the following roles in the listed
order:

"Head of Personnel", "Head of Research", "Medical Doctor", "Station Engineer", "AI"

I think the last part (using start places) is probably a bad idea, this is really a
code thing (or maybe a map specific thing, something to put into the map.dm file maybe?)

It also revamps the 'how do i assigned jobs based on preferences' system so it will
do its best to give you your #1 job if it can, instead of the current system of
shuffling the occupations and picking people who have the preference set.

Hard to test without having a bunch of players, but looks good on a bench test.

```

- Attachment [jobassign.unstable.patch](attachments/144_8412555827507727323_jobassign.unstable.patch), 5,358 bytes

### Comment 2: commenter 1, 2008-07-13 17:30 UTC

```
I've applied a different revamp of the job assignment system that uses a different
algorithm that (I think) actually works properly - at least, I can't see any flaws in
it. I'd appreciate people checking it out and seeing what I fucked up.
```

### Comment 3: commenter 11, 2008-08-02 18:13 UTC

```
reorders essential jobs, so if there's only 2 players one doesn't get screwed with AI
(it's now towards the end of the list). Even if it's useful it's a pain for testing
and probably boring as fuck to play as the AI with only 1 player on the station...

New order:
                var/list/necessaryjobs = list(
                        "Captain",
                        "Head of Personnel",
                        "Station Engineer",
                        "AI",
                        "Medical Doctor",
                        "Head of Research"
                )
```

- Attachment [jobassignreorder.unstable.patch](attachments/144_1025979407043414577_jobassignreorder.unstable.patch), 566 bytes

### Comment 4: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
