# Issue 118: Blob mode - shuttle seems to call

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-17 19:35 UTC |
| Last comment | 2008-08-19 15:31 UTC |
| Comments | 2 |
| Archive page | https://code.google.com/archive/p/ss13/issues/118 |

## Comments

### Comment 0: commenter 2, 2008-06-17 19:35 UTC

```
In computer.dm, code says:

	if( ticker.mode == &quot;blob&quot; )
		user &lt;&lt; &quot;Under directive 7-10, SS13 is quarantined until further notice.&quot;
		return


but it never triggers, even if it is currently blob mode. PErhaps caps on
&quot;Blob&quot;? not quite sure what the fix is.

As it is, it SAYS it's calling the shuttle and it'll arrive in 10, but the
countdown never starts.
```

### Comment 1: commenter 22, 2008-08-19 15:31 UTC

```
Fixed with ticker.mode being changed to ticker.mode.name
```
