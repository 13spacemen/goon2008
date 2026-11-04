# Issue 236: stutter proc is broken

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-31 14:03 UTC |
| Last comment | 2008-07-31 16:17 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/236 |

## Comments

### Comment 0: commenter 11, 2008-07-31 14:03 UTC

```
00:30 &lt; Persh&gt; runtime error: bad text or out of bounds 
00:30 &lt; Persh&gt; proc name: stutter (/mob/proc/stutter) 
00:30 &lt; Persh&gt;   source file: say.dm,12 
00:30 &lt; Persh&gt;   usr: Unknown (/mob/carbon/human) 
00:30 &lt; Persh&gt;   src: Unknown (/mob/carbon/human) 
00:30 &lt; Persh&gt;   call stack: 
00:30 &lt; Persh&gt; Unknown (/mob/carbon/human): stutter(&quot;ow&quot;) 
00:30 &lt; Persh&gt; Unknown (/mob/carbon/human): say(&quot;ow&quot;)
00:30 &lt; Persh&gt; Kasey Ashton (/mob/carbon/human): stutter(&quot;say us out&quot;) 
00:30 &lt; Persh&gt; Kasey Ashton (/mob/carbon/human): say(&quot;say us out&quot;) 
00:32 &lt; Persh&gt; kurper saying fuck or f u c k threw errors
00:32 &lt; Kurper&gt; yeah
00:32 &lt; Kurper&gt; what errors
00:32 &lt; Persh&gt; runtime error: bad text or out of bounds
00:32 &lt; Persh&gt; proc name: stutter (/mob/proc/stutter)
00:32 &lt; Persh&gt;   source file: say.dm
00:32 &lt; Persh&gt; 3 or 4 each time
00:32 &lt; Kurper&gt; ohh
00:32 &lt; Kurper&gt; yeah i understand now
```

### Comment 1: commenter 1, 2008-07-31 16:17 UTC

*(no text)*
