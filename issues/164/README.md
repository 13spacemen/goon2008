# Issue 164: Remote Signal + Airlocks + Screwdrivers

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-30 06:20 UTC |
| Last comment | 2008-07-15 19:07 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/164 |

## Comments

### Comment 0: commenter 22, 2008-06-30 06:20 UTC

```
This is the best idea ever, you should be able to screwdriver into doors
like you can now, and then put a remote signaller into it so you can
remotely open it. Chaplain commented that he would put it on the engine
doors and comment on how they have DISOBEYED THE LORDA!
```

### Comment 1: commenter 22, 2008-07-01 01:04 UTC

```
Navee: I had an an idea while messing around last night and I was wondering how hard
it would be to code. It's to allow remote signaling devices to open airlocks.

- Screwdriver on signaling device. (This is already coded in for use with bombs)
- Screwdriver on airlock. (Also already done)
- Signaling device on airlock.
- Screwdriver on airlock.

Then when you were ready you could send the signal and the airlock would open. This
just seems like it would have all kinds of fun uses but still require half a brain to
set up so it's not too readily griefed.

Edit: Since this would presumably open ID airlocks, it might be slightly overpowered
the way I suggested it. Therefore, I have an alternate suggestion which should work
better but is probably harder to code.

Add a couple of new things to the screwdriver'd airlock interface, namely:
- Red wire: Cut wire Pulse wire Attach signaler

Also at the bottom with the indicators add:
ID Authentication on/off
With a new random wire that controls it.

Then what you do is screwdrive your signaler to make it ready to modify, then pulse
tool the airlock. When you pulse the correct wire the ID Authentication will turn on
and then off again like the "AI Control" light does currently. You then attach the
signaler to that wire. That wire and only that wire will open the airlock when signaled.
This not only allows for some cool traps but is an alternative to airlock hacking
rather than the old crowbar method.

Edit edit: Alternately alternately, rather than adding the new "Attach signaler"
function, you make it so that when cut the "ID Authentication" wire it does two things.
A: It makes it so that you can open that door with a click as if you had the ID, even
though you don't.
B: Makes it so that the signaler works with my original idea at the top of this post.
Pulsing it would just flash the light so you knew which was the right wire, you'd
have to cut it to get these results. 
```

### Comment 2: commenter 1, 2008-07-10 19:52 UTC

```
if someone makes an "airlock with signaller attached" icon i will add this functionality.
```

### Comment 3: commenter 1, 2008-07-15 19:07 UTC

*(no text)*
