# Issue 216: Very minor security record line problem

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-24 07:15 UTC |
| Last comment | 2008-07-28 02:33 UTC |
| Comments | 5 |
| Archive page | https://code.google.com/archive/p/ss13/issues/216 |

## Comments

### Comment 0: commenter 34, 2008-07-24 07:15 UTC

```
The separation line &quot;Researchers&quot; on the security record list is on the
same as engineer, reading like this.

Rank:
Assistants:
Research Assistant
Staff Assistant
Medical Assistant
Technical Assistant
Technicians:
Forensic Technician
Research Technician
Station Technician
Atmospheric Technician
Engineer (Engine Technician) Researchers:
Medical Researcher
Toxin Researcher
Officers:
Medical Doctor
Security Officer
Higher Officers:
Head of Research
Head of Personnel
Captain

```

### Comment 1: commenter 2, 2008-07-24 09:08 UTC

```
Security Record List?

Is this one of the papers laying around the station? If so it's way out of date and
will be updated shortly.
```

### Comment 2: commenter 34, 2008-07-24 21:40 UTC

```
No, it's the job list thing for the security record terminal no one uses.
```

### Comment 3: commenter 11, 2008-07-27 16:21 UTC

```
migrates this to use get_all_jobs instead of using stuff hard coded into the
computer. also adds the subject's name to the title of the security record for easier
sorting/finding what you're looking for (if you're some kind of dinosaur that needs
to print off computer records)
```

- Attachment [securityrecords.unstable.patch](attachments/216_-67435320955763327_securityrecords.unstable.patch), 11,819 bytes

### Comment 4: commenter 1, 2008-07-28 02:33 UTC

*(no text)*
