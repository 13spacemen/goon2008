# Issue 167: Power has limited uses

| Field | Value |
|---|---|
| Status | NextVersion |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-30 23:35 UTC |
| Last comment | 2008-08-28 22:26 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/167 |

## Comments

### Comment 0: commenter 13, 2008-06-30 23:35 UTC

```
Right now the station either has enough power or it doesn't.  Without 
power ALL systems will slowly shut down, whereas sufficient generation 
maintains the status quo.  Sufficient power is very easy to get, but it 
just goes into the batteries (which are pretty boring to manage).  There 
should be some gigantic power sinks so theres actually a reason for an 
overproduction of power.  Some suggestions:

Toxins: operation of the heaters require additional power over what the 
APC draws.  Heaters now have a new meter that determines heating rate.  
Power requirements are determined by the heating rate squared (or 
something like that).  So to heat at 1 deg/sec takes, say, 1kw, but to 
heat at 2 deg/sec takes 4kw and so on.

Genetic: with Kurper's new system of completely randomized genetics there 
is an obvious use for spare power; a DNA analyzer.  At relatively &quot;low&quot; 
power (say 100kw for 1 min) it can give hints for the selected target 
(like &quot;C12-A9 is linked with C11-A17&quot;, or &quot;C12-A9 is involved in eye 
color&quot;).  More power draw results in more useful information (say 100kw 
for 5 min or 500kw for 1 min gives &quot;C12-A9 is red eye color value&quot;, and 
100kw for 30 min or 500kw for 6 min gives &quot;C12-A9 value of AC gives X-Ray 
vision&quot;).

Laser: Persh's idea of a laser researcher gives more opportunity to use up 
extra power.  Some more obvious ideas is a laser with a variable strength 
that requires comparible power.  I'm sure you can think of others.
```

### Comment 1: commenter 25, 2008-07-17 19:22 UTC

```

Basically, what you are saying is that you want equipment to use variable amounts of
power, since APC's already account for a (static) power drain from equipment being on.

In this case you could have the teleporter use a massive amount of power to
potentially drain low-charge batteries. That would be cool.


```

### Comment 2: commenter 13, 2008-07-19 04:48 UTC

```
Now that I look at it again I'm not sure I got my point across.  Hell, I'm not even 
sure what my point WAS... let me try again.

Right now power overproduction is easy, barring bombs sabotage and such.  There 
should be some reason to have an overproduction.  Perhaps high-powered equipment 
(heaters, gas pumps, DNA machine) should require more power to work at their full 
capacity.  Speed of heating or pumping is dependent on power draw, certain DNA 
operations require additional energy, and so on.

Additional equipment that would use this surplus could be:
DNA simulator that gives hints for Kurper's new DNA system
Gas-synthesizer/filter/converter or something
Persh's idea of a Laser Researcher

Hopefully that's a lot clearer and easier on the eyes.
```

### Comment 3: commenter 24, 2008-08-28 22:26 UTC

*(no text)*
