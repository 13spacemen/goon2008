# Issue 178: Bug Report

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Defect, Priority-Medium |
| Stars | 0 |
| Opened | 2008-07-04 20:53 UTC |
| Last comment | 2008-07-08 03:58 UTC |
| Comments | 3 |
| Archive page | https://code.google.com/archive/p/ss13/issues/178 |

## Comments

### Comment 0: commenter 22, 2008-07-04 20:53 UTC

```
runtime error: Cannot read null.amount
 proc name: attackby (/turf/station/wall/attackby)
   source file: demo.dm,3069
   usr: Lars Askalov the Second (/mob/human)
   src: the wall (98,26,1) (/turf/station/wall)
   call stack:
 the wall (98,26,1) (/turf/station/wall): attackby(null, Lars Askalov the
Second (/mob/human))
 the wall (98,26,1) (/turf/station/wall): DblClick()
 the wall (98,26,1) (/turf/station/wall): Click(the wall (98,26,1)
(/turf/station/wall), &quot;mapwindow.map&quot;, &quot;icon-x=20;icon-y=21;left=1&quot;)
 
```

### Comment 1: commenter 24, 2008-07-07 00:17 UTC

```
Relevant lines of code:
3057: /turf/station/floor/attackby(obj/item/weapon/C as obj, mob/user as mob)
3067:	else if (istype(C, /obj/item/weapon/tile))
3078:		var/obj/item/weapon/tile/T = C
3079:		T.amount--
3080:		if(T.amount < 1) del(T)

Cleaned up code and added checks for C/user being null
```

- Attachment [demo.patch](attachments/178_7302625177686656550_demo.patch), 1,818 bytes

### Comment 2: commenter 1, 2008-07-08 03:58 UTC

*(no text)*
