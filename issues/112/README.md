# Issue 112: Want-to-play-traitor function

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-16 18:08 UTC |
| Last comment | 2008-06-30 12:49 UTC |
| Comments | 10 |
| Archive page | https://code.google.com/archive/p/ss13/issues/112 |

## Comments

### Comment 0: commenter 2, 2008-06-16 18:08 UTC

```
People should be given the option of playing Traitor, as some detest the
role and will just suicide immediately if handed it.

I was going to say there should be a seperate button for &quot;I want to play
traitor&quot;, but maybe we should just add Traitor to the job selection list.
Make it your top slot and happy times for all.
```

### Comment 1: commenter 2, 2008-06-16 18:09 UTC

```
I like how selecting 'traitor' would remove one of your three job choices too. It
would vastly increase your chance of being traitor but reduce the number of critical
roles you could choose to play.

Also, a quick safeguard where it will pick from anyone if only two (or less) people
has it selected (so everyone can't turn off their selection secretly to single out
one guy).
```

### Comment 2: commenter 1, 2008-06-16 19:07 UTC

```
Lord no, make it a checkbox.
```

### Comment 3: commenter 17, 2008-06-21 18:38 UTC

```
I wrote up the code changes that would be necessary for this feature into a text
document. As designed, it makes a Yes/No toggle on the Char Setup page for whether
you want to be syndicate, applying to both Nuclear and Traitor modes. Your preference
is saved on the server like other info. It defaults to Yes (current behavior).
Additionally, if no one is set to Yes and the mode is Traitor, it will randomly pick
from all players (current behavior) so as not to impede gameplay. In Nuclear, if the
number of Syndicate agents (2-5) is greater than the number of people desiring to
play as Syndicate, then it will fill slots with people preferring Syndicate and then
choose randomly among remaining members. So, in most cases, users expressing a
preference against being a Syndicate agent would have that wish fulfilled, but in
extreme cases they have a chance to be pulled in to keep the game balanced and going.

I can post or e-mail the changes as they would apply to the official SS13 source.
Alternately, if you can let me know where to access the SVN and get commit
privileges, I can try to put it in. No guarantees if my scripting changes work, so if
anyone wants to pass over it, let me know.
```

### Comment 4: commenter 1, 2008-06-23 04:19 UTC

```
Post a patch file for OpenSS13 up here, I suppose. I currently plan to reimplement
most of the spawning code in the next few days, so it's not really a huge issue
whether it works with ours or not.
```

### Comment 5: commenter 17, 2008-06-24 01:03 UTC

```
I didn't delve too deeply into how related stuff worked, so I pretty much approached
it trying not to step on too many toes. Should work by itself pretty well, but the
gamemode initialization could benefit from being rewritten with this in mind. It's
pretty basic.

Here are the relevant diff outputs from openss13:

File: ss13_algorithm2.dm

273a274,275
> 	dat += text("Choose me for Syndicate: <a
href=\"byond://?src=\ref[];be_syndicate=1\"><b>[]</b></a><br>", src,
(src.be_syndicate ? "Yes" : "No"))
> 	dat += "<hr>"


File: !atoms.dm

374a375
> 	var/be_syndicate = 1.0

File: cellautomata.dm

1886a1887
> 			var/list/synd_list = list()
1889a1891,1892
> 					if(M.be_syndicate)
> 						synd_list += M
1897c1900,1905
< 					var/mob/human/H = pick(mobs)
---
> 					var/mob/human/H = null
> 					if(synd_list.len < 1)
> 						H = pick(mobs)
> 					else
> 						H = pick(synd_list)
> 						synd_list -= H
1954a1963
> 			var/list/synd_list = list()
1958a1968,1969
> 					if(M.be_syndicate)
> 						synd_list += M
1963c1974,1977
< 			ticker.killer = pick(mobs)
---
> 			if(synd_list.len < 1)
> 				ticker.killer = pick(mobs)
> 			else
> 				ticker.killer = pick(synd_list)

File: mob.dm

4426a4427,4428
> 		F["be_syndicate"] >> src.be_syndicate
> 
4537a4540,4541
> 		else if (findtext(href, "be_syndicate", 1, null))
> 			src.be_syndicate = !( src.be_syndicate )
4561a4566
> 			F["be_syndicate"] << src.be_syndicate
4591a4597
> 			be_syndicate = 1.0

```

### Comment 6: commenter 2, 2008-06-24 01:11 UTC

```
Umm can you not make a patch file or upload the file in question at least?
```

### Comment 7: commenter 17, 2008-06-24 23:41 UTC

```
Sure, sorry.
```

- Attachment [synd.patch](attachments/112_-6202993624567589692_synd.patch), 4,372 bytes

### Comment 8: commenter 2, 2008-06-30 03:23 UTC

```
Guhhh

Probably the most difficult coding I've done so far on this project and that's not
saying much. This here be a /unstable variant.

I got halfway through porting the code to /unstable when I realized Kurper was
thinking ahead and already had a "willing_to_be_traitor" variable coded in. I ripped
this out in favour of the more generic [willing_to]"be_syndicate" variable as that
covers both nuke and traitor.

Compiles fine on my end, and I tested saving of the preference and toggling it and
everything, that all works. I still spawn in on my own private server and can still
get syndicate designations with/without it select, so nothing's horribly broken. I
just haven't been able to test with more than one person, with the option selected or
not, etc.
```

- Attachment [syndicate_select.patch](attachments/112_1019750979130473441_syndicate_select.patch), 5,955 bytes

### Comment 9: commenter 1, 2008-06-30 12:49 UTC

*(no text)*
