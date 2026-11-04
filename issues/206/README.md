# Issue 206: pills do nothing in unstable right now

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-21 21:17 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 7 |
| Archive page | https://code.google.com/archive/p/ss13/issues/206 |

## Comments

### Comment 0: commenter 1, 2008-07-21 21:17 UTC

```
i removed all their functionality along with the diseases they treated, we
need new pills (ideally ones that aren't completely retarded like the old
ones were)

ideas: sleeping pills, placebos, toxins (toned-down cyanide, possibly with
some beneficial effect too), beyond that i dont really know

ideally their colors would be randomized each round too

(antitoxins still work for what its worth, just not the other ones)
```

### Comment 1: commenter 25, 2008-07-21 21:20 UTC

```
My list:

Placebos
Anti-toxin supplements (make this stay in the system to filter out future toxins, if
they don't already)
Sleeping pills
A kind of pill that must be taken continuously, possibly after extreme toxins
exposure of some kind or something

syndicate/traitor stuff:
cyanide pill


I don't think straight-up toxin pills have a place on a civilized station.
```

### Comment 2: commenter 11, 2008-07-21 21:25 UTC

```
a toxic pill that was a tradeoff may not be too bad... eg it causes toxic damage but
supresses suffocation damage for a certain period of time (as an alternative to rejuv
if you don't have one on you), or maybe have them last longer than rejuvs, or take
away rejuv 'stop suffocation' effect and make them just wake up unconcious people
(this would require a change to sleepers too though).
```

### Comment 3: commenter 1, 2008-07-22 04:44 UTC

```
also the same thing is somewhat true of beer, the fuzzy eyesight stuff isnt in the
code any more. also, some of the chemicals (there are //TODOs in the code indicating
that)
```

### Comment 4: commenter 11, 2008-07-27 21:23 UTC

```
the other chemicals could probably stand to be looked at here too

medbay toxins takes ~ 30 units to actually kill someone (which is 2 full syringes)
kind of overkill

as far as antitox etc, right now you eliminate 1 unit of antitox per game ptick (~1
second), which will neutralize up to 3 tox damage that you have sustained. plasma (or
any other toxin) will do 1 tox damage per unit of toxin in your system (so you COULD
use antitox to counter future toxic damage, but it's time limited- which is somewhat
realistic- and you can't just go "bwa ha ha I am immune to toxins!")
```

### Comment 5: commenter 11, 2008-07-27 21:30 UTC

```
while we're at it... a lot of the drug code probably could/should be moved into an
array on the mob/carbon (so we can add more drugs/chemicals easily) and the effects
moved into a proc on the chemical, gives more freedom to mix chemicals too.

also on the thought of a toxic pill- maybe a toxic pill that adds a 'slow down
metabolism' effect? so toxins/suffocation damage is inhibited somewhat but it also
has a prolonged toxic effect (unless you counter with antitox which continues to
attack toxins at the regular metabolic rate)

metabolic slowdown effect could also be used when you know you're going into a toxic
situation (mix up some toxic/metabolism chemical + some antitox for a "hey i can walk
into plasma with no ill effects for 2 minutes" concoction)
```

### Comment 6: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
