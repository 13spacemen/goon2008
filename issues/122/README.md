# Issue 122: attacking locker with grab results in a backtrace

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Patch, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-18 04:10 UTC |
| Last comment | 2008-06-23 01:36 UTC |
| Comments | 4 |
| Archive page | https://code.google.com/archive/p/ss13/issues/122 |

## Comments

### Comment 0: commenter 11, 2008-06-18 04:10 UTC

```
&lt;Persh&gt; runtime error: Cannot modify null.loc.
&lt;Persh&gt; proc name: attackby (/obj/closet/attackby)
&lt;Persh&gt;   source file: demo.dm,1761
&lt;ragzilla&gt; persh- who was trying to do what to a locker?
&lt;Persh&gt; what
&lt;ragzilla&gt; that error you posted
&lt;ragzilla&gt; someone was 'attacking' a locker
&lt;ragzilla&gt; trying to put something in it by the looks of it
&lt;ragzilla&gt; maybe a grab or something.. 
&lt;Trafalgar&gt; oh, that's another one I fixed fairly recently
&lt;Trafalgar&gt; grabs especially
&lt;Trafalgar&gt; you can grab a person or monkey and then dclick a locker
&lt;Trafalgar&gt; and CRASH BANG
&lt;Trafalgar&gt; it tries to drop the grab and then it tries to move null into
the locker
&lt;Trafalgar&gt; (because dropping it deletes it)
&lt;Trafalgar&gt; you probably just lack that fix
```

### Comment 1: commenter 11, 2008-06-21 16:03 UTC

```
attached patch, partially lifted from openss13 but extended so you actually drop your
grab when you drop people in the locker.
```

- Attachment [lockergrab.svn.patch](attachments/122_-2406775775539597127_lockergrab.svn.patch), 1,422 bytes

### Comment 2: commenter 1, 2008-06-21 17:00 UTC

*(no text)*

### Comment 3: commenter 1, 2008-06-23 01:36 UTC

*(no text)*
