# Issue 6: HelpAdmin PMs need reply link and color change

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-05-20 20:58 UTC |
| Last comment | 2008-05-21 02:41 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/6 |

## Comments

### Comment 0: commenter 2, 2008-05-20 20:58 UTC

```
Oh no I already fixed it:

/mob/verb/adminhelp(msg as text)
	if (config.logooc)
		world.log &lt;&lt; &quot;HELP: [src.name]/[src.key] : [msg]&quot;
	
	msg = cleanstring(msg)
	msg = html_encode(copytext(msg, 1, 128))
	
	if (!msg)
		return
	
	var/yep = 0
	if (!src.muted)
		for(var/mob/M in world)
			if (M.client &amp;&amp; M.client.holder)
				M &lt;&lt; &quot;\blue &lt;B&gt;HELP: &lt;A
href='?src=\ref[usr];priv_msg=\ref[usr]'&gt;[src.name]&lt;/A&gt;/([src.key]):&lt;/B&gt; [msg]&quot;
				yep = 1
	
	if (yep)
		src &lt;&lt; &quot;\blue &lt;B&gt;Your message has been broadcast to administrators.&lt;/B&gt;&quot;
	else
		src &lt;&lt; &quot;\blue &lt;B&gt;Sorry, no administrators are on to hear your plea for
help.&lt;/B&gt;&quot;

```

### Comment 1: commenter 2, 2008-05-20 21:04 UTC

```
And now in patchfile form (only patches mob)
```

- Attachment [adminhelp-update.patch](attachments/6_2291799005487251392_adminhelp-update.patch), 1,793 bytes

### Comment 2: commenter 1, 2008-05-20 21:06 UTC

```
Comment deleted
```

### Comment 3: commenter 4, 2008-05-21 02:41 UTC

*(no text)*
