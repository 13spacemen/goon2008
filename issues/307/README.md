# Issue 307: Engine too large

| Field | Value |
|---|---|
| Status | Invalid |
| Labels | Type-Other, Priority-Low, Branch-Kelson, Phase-Kelson-1 |
| Stars | 0 |
| Opened | 2008-10-24 01:16 UTC |
| Last comment | 2008-11-01 20:19 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/307 |

## Comments

### Comment 0: commenter 45, 2008-10-24 01:16 UTC

```
<b>What steps will reproduce the problem?</b>
1. Starting the engine without 'stacking' it first.
2. Trying to keep up with the plasma canisters draining into the engine as 
the only engineer.
3. Trying to get more than a pittance of CO2 into the Hot Loop.

<b>What is the expected output? What do you see instead?</b>
I expected to be able to get the engine up to station-powering levels with 
a reasonable amount of time, effort, and resources. What I got was an 
engine that took a minute to produce ANY power after ignition, and a 
nonstop race to swap out canisters as they emptied into the cavernous maw 
of the engine chamber. By the time the engine was producing enough power 
to keep the station going without the solar arrays, I had drained roughly 
80% of engineering's plasma canisters (including the high-capacity one) 
into the engine, as well as 4 of the CO2 canisters into the hot loop of 
the engine. 

What version of the product are you using?
Whatever version Persh runs.

<b>Please provide any additional information below.</b>
I can understand that an engine chamber as tiny as the protoengine's would 
seem ridiculously tiny on Goonstation, but what you have currently is far 
too large to be efficiently run. Shaving something like 1-2 tiles off all 
the outer sides and removing a few of the connectors might be enough of a 
reduction to allow for a shortchanged engineering crew to not drop dead 
from overworking themselves, or perhaps finding some way to rework the 
generator/whatever code so that you can have an engine that massive 
without entirely gimping the ability to get it hot enough to be useful.

I'm aware that stacking the engine drastically reduces the problem, but 
given how massively retarded it would be to do something like that in real 
life, I cannot in good faith support doing it in an RP game. I'm dumb like 
that.
```

### Comment 1: commenter 22, 2008-10-24 20:30 UTC

```
If you don't stack you won't get power in stable.
```

### Comment 2: commenter 45, 2008-10-28 02:29 UTC

```
Upon further reflection, I have determined that the engine ISN'T too large to work, 
but the lack of proper output (even WHEN stacked) is from a much more insidious 
source. Guess what happens if you add unheated CO2 to the end of the hot loop that 
comes OUT of the toasty hot engine.
```

- Attachment [Goonengine.JPG](attachments/307_2114503440689687943_Goonengine.JPG), 117,797 bytes

### Comment 3: commenter 24, 2008-11-01 20:19 UTC

```
You drop the temperature of the incoming gas supply, but boost the gas density which
allows it to absorb greater energy on the next pass through the system. This is a
non-obvious impact to many folks, but nothing wrong with the engine or which
could/should get fixed.
```
