# Google Code project page and issue tracker for `ss13`

This branch holds what survives of the project's Google Code page, `http://code.google.com/p/ss13/`, and its issue
tracker. Nothing here is from SVN, and it shares no history with the converted branches (`master`, `svn-mirror` and
the others).

The project's code was in the SVN repository at `http://svn.slurm.us/public/spacestation13/`, which the rest of this
repository was converted from. Google's archive has no source for `ss13`. It is linked to this repository in three
ways:

- Commit messages cite tracker issues by number, for example r568 "Issue 38: Overcharging APC Batteries".
- Issues carry `RevisionNNN` labels naming those same revisions.
- Patches attached to the issues name the SVN revision they were made against.

Downloaded 2026-11-04 from the Google Code Archive (`https://code.google.com/archive/p/ss13`) and the Wayback Machine.
Files under "As served" below are byte-for-byte as downloaded.

## The project

- **Summary:** SS13
- **Description:** A multiplayer tile based game in space.
- **Code license:** GNU Lesser GPL (`lgpl` in `project.json`, "GNU Lesser GPL" on the 2016 page)
- **Stars:** 11
- **Members** (2016 people page; Google showed only the start of each address):

  | Member | Role |
  |---|---|
  | rick.gib...@gmail.com | Owner |
  | kur...@gmail.com | Owner |
  | KelsonG...@gmail.com | Owner |
  | Persh...@gmail.com | Committer |
  | maddi...@lightbound.net | Committer |
  | capn.lu...@radialgames.com | Committer |

  The 2011 project home lists only the three owners.
- **Source, wiki and downloads:** none in the archive. Source was disabled before 2011, so `source-page-1.json`,
  `commits-page-1.json` and `wikis.json` are empty, and `downloads-page-1.json` does not exist.

## The issue tracker

- [Index of all issues](issues/INDEX.md): 338 issues, numbered as on Google Code (1–339; there is no issue 329),
  2008-05-20 to 2010-11-01. Most activity was in 2008.
- 1,517 comments from 61 commenters, 373 attachments.
- 348 attachments were recovered. They came from Wayback Machine captures of `ss13.googlecode.com` made in May 2016,
  not from Google's archive, which returns an error for every file of this project. Each file has the exact size
  recorded in its issue. The other 25 are listed in
  [missing-attachments.md](cross-references/missing-attachments.md).
- Labels: `Type-*`, `Priority-*`, `Branch-*` (`Kelson`, `InSpaceNoOneCanHearYouSayNo`, `Trunk`), `Phase-Kelson-*`,
  and `RevisionNNN`.

## Files

### As served

| File | What |
|---|---|
| `project.json` | The archive's project record |
| `logo.png` | The project logo as the archive serves it |
| `issues-page-N.json` | The archive's issue list, 4 pages |
| `issues/NNN/issue.json` | The archive's full record of issue NNN: fields, labels and every comment, with attachment names and sizes |
| `issues/NNN/attachments/` | Recovered attachment files, named `<issue>_<attachment id>_<original name>` |
| `wikis.json`, `commits-page-1.json`, `source-page-1.json` | Empty listings |
| `wayback/p-ss13-*.html` | Wayback captures of the project home, 2011-03-07 and 2016-05-16 (three) |
| `wayback/p-ss13-people-*.html` | Wayback captures of the people page, 2011-03-08 and 2016-05-16 (two) |

### Generated from those files

These pages are generated from those files so they can be read without the JSON. They add nothing that isn't in them,
except the commit details in the cross-references, which come from this repository.

| File | What |
|---|---|
| `issues/INDEX.md` | One row per issue: summary, status, labels, date, comments, attachments, revisions |
| `issues/NNN/README.md` | Issue NNN: fields, every comment with its UTC date, attachments, related revisions |
| `cross-references/by-revision.md` | SVN revision → issues, with the converted git commit |
| `cross-references/commenters.md` | Commenter numbers used on the pages → hashed IDs in the JSON |
| `cross-references/missing-attachments.md` | Attachments that were not recovered |

## Notes

- Issue numbers match Google Code: `issues/038` is `https://code.google.com/archive/p/ss13/issues/38`.
- The related revisions on each page are only links recorded at the time: a commit log message that cites the issue,
  or a `RevisionNNN` label. Comments that mention revisions, such as "Committed in rev 568", are left in the comment
  text.
- Many attachments were never committed as they were, or were committed in a different form. A separate analysis
  matched them to the code, but it is inference and is kept outside this repository, with the conversion's other
  working files.
- Times in the JSON are Unix timestamps. The pages show them in UTC.
- The archive has no commenter names, only hashed IDs. Two IDs on different issues are the same person.
- Patches saved as `.txt` often have spaces where the code had tabs, so they may not apply as they are.
- Issue text is kept exactly as written, including the language of the time.
