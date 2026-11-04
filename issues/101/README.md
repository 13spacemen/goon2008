# Issue 101: Allow admins to spawn items at arbitrary locations

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Low, Revision559 |
| Stars | 0 |
| Opened | 2008-06-06 02:44 UTC |
| Last comment | 2008-08-29 01:56 UTC |
| Comments | 8 |
| Archive page | https://code.google.com/archive/p/ss13/issues/101 |

## Related SVN revisions

Commits whose log message cites this issue:

- r559, 2008-08-29, kelson, `4c3326403` on `/branches/kelson/unstable`: Issue 101: Admin: Spawn Objects

Revisions named by the issue's `Revision` labels:

- r559, 2008-08-29, kelson, `4c3326403` on `/branches/kelson/unstable`: Issue 101: Admin: Spawn Objects

## Comments

### Comment 0: commenter 1, 2008-06-06 02:44 UTC

```
This'd make a lot of special game modes (like multitraitor) go a lot
smoother if it were implemented well. A tree-like &quot;spawn item&quot; window
rather than the current &quot;scroll through 8000 items to get to yours&quot; would
be a lot better, too.
```

### Comment 1: commenter 1, 2008-07-10 19:55 UTC

*(no text)*

### Comment 2: commenter 24, 2008-08-14 21:57 UTC

```
Two manners of creating the effect:
spawn_object_v1 uses individual X,Y popups for offsets
spawn_object_v2 uses combined X,Y,Z popup for offsets

Both act as before when the user hits enter (spawning at location)
Both function normally when invalid values are supplied
```

- Attachment [spawn offset v1.patch](attachments/101_-8981929739118669367_spawn%20offset%20v1.patch), 962 bytes
- Attachment [spawn offset v2.patch](attachments/101_-1747126378632755538_spawn%20offset%20v2.patch), 1,074 bytes

### Comment 3: commenter 24, 2008-08-14 22:02 UTC

```
A second thought: x,y,z are equivalent to 0,0,0 and more descriptive
```

- Attachment [spawn offset v3.patch](attachments/101_-346984103321659301_spawn%20offset%20v3.patch), 1,074 bytes

### Comment 4: commenter 11, 2008-08-14 23:34 UTC

```
maybe this would be better if it just let you select a mob to spawn things at?
(presumably they need to spawn things for multitraitor to give the multiple traitors
items?)
```

### Comment 5: commenter 24, 2008-08-16 06:04 UTC

```
How should that be laid out? I'm thinking:

Click "Make Object" => click "Spawn at Offset" => enter offset (default: none)
Click "Make Object" => click "Spawn at Mob" => select mob from list (default: admin)

```

### Comment 6: commenter 24, 2008-08-27 04:58 UTC

```
Brand new (Javascript) interface!
- spawn an arbitrary number of items between 1 and 100
- spawn items at arbitrary offsets; absolute or relative
- real-time substring/prefix matching for the entire object list
```

- Attachment [spawn offset v4.patch](attachments/101_-9124584263804850733_spawn%20offset%20v4.patch), 3,523 bytes

### Comment 7: commenter 24, 2008-08-29 01:56 UTC

```
Relevant Changes
- maximum items increased to 500
- clicking spawn now closes the window
- slightly modified log_admin messages
```

- Attachment [spawn offset v5.patch](attachments/101_266327709811793463_spawn%20offset%20v5.patch), 3,587 bytes
