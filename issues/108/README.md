# Issue 108: DNA system right now is pretty awful

| Field | Value |
|---|---|
| Status | Fixed |
| Labels | Type-Enhancement, Priority-Medium |
| Stars | 0 |
| Opened | 2008-06-15 17:43 UTC |
| Last comment | 2008-07-19 05:12 UTC |
| Comments | 13 |
| Archive page | https://code.google.com/archive/p/ss13/issues/108 |

## Comments

### Comment 0: commenter 1, 2008-06-15 17:43 UTC

```
Conveniently enough, since I'm working on the mob revamp this'd be a good
time to also redo DNA. Here's my plan:



The new (June 2008) DNA system is pretty incredible. Here are the major
ways in which it differs from the old system:

&quot;Medical researchers&quot; are now called &quot;genetic researchers.&quot;
UI, SI, UE, SE are all abolished - there's just &quot;DNA&quot; now.
No more disks - the computer can do everything by itself, and pops out
little DNA disks whenever it needs to (there may need to be a maximum
number, to prevent griefers from making thousands to cause massive lag -
we'll see).
There's just one DNA computer and one place to store people now, rather
than two with various functions split up between them.
People now have 23 (this may change) chromosomes, each with 20 (this may
change) genes. Each gene has a value from A to Z (this may change), and a
specific function. Note that multiple genes may be required to all match
for any given characteristic, or multiple genes might all do the same thing
(so setting gene 21A to &quot;W&quot; might make you fireproof, as would setting gene
12B to &quot;X&quot;). Everything is randomized at the beginning of each round, so
the DNA researchers something to do no matter how good they are.
The general gene functions are:
	Junk gene: The value of this gene makes no difference. Most genes will be
of this type.
	Cosmetic gene: Changing this gene will change your looks or voice.
Examples include hair color, eye color, gender (the whole X/Y chromosome
thing is probably not being modelled), voice, whether or not you look like
a monkey, etc.
	Ability gene: Changing this gene will give you abilities or remove them.
Examples may include fireproofness, intelligence (which allows you to use
computers), ability to understand/talk to humans, ability to
understand/talk to monkeys, genetic diseases, etc.
	
	This system will allow for almost any combination of human/monkey/other
traits you want, as long as you're good enough at genetic research. If you
want to be a super-monkey, able to understand humans and operate computers
without being too suspicious, just isolate the monkey appearance genes and
apply them to yourself. If you want to be fireproof, keep bombarding
monkeys with gamma radiation (which the DNA machine will be able to do -
it'll cause slight unhealable damage as well as mutating some of the DNA)
and sticking them in fires until one of them survives. You might have to
abduct some people and try on them if you run out of monkeys.
	
	Also, the age-old bug that allows you to revive people by turning them
into monkeys and back will be fixed. Since genetic researchers will have
plenty to do now, they probably won't mind.
	
	It remains to be seen what the optimal numbers of chromosomes, genes per
chromosome, and possible values per gene are. It'll probably depend on the
implementation of the gamma ray burst and on what functions the DNA
computer can perform. Ideally, a good DNA researcher should be able to
isolate an existing gene (like one the monkeys have but humans don't) in
about five minutes and create a random new one (like being fireproof) about
once every two games, I think.



Comments?
```

### Comment 1: commenter 1, 2008-06-15 17:48 UTC

```
Also:

Some of the "ability" genes will be essential to being anything useful at all. The
upshot of this is that if they're changed, the person will become a quivering blob of
biomass, able to move about one square every 10 seconds and that's it. On the upside,
quivering blobs would be almost immune to all forms of damage.
```

### Comment 2: commenter 12, 2008-06-15 20:58 UTC

```
If you're interested in making the terminology in line with actual genetics, I have 
the following suggestions. The location of each gene on a chromosome would be known 
as a "locus," plural "loci." Each different version of a gene would be called 
an "allele." So a particular gene's display might look like this: 

Chromosome: 4
Loci: A
Allele: Beta

I am a genetics major who works with genomes on a daily basis, so if you have any 
questions I would be happy to answer them.
```

### Comment 3: commenter 1, 2008-06-15 21:35 UTC

```
What's the sciencey naming scheme for alleles? Just any greek letter?
```

### Comment 4: commenter 12, 2008-06-15 23:41 UTC

```
Comment deleted
```

### Comment 5: commenter 12, 2008-06-15 23:44 UTC

```
The scientific naming scheme for different alleles is sort of complicated and 
wouldn't work very well for SS13. Basically they name every locus (usually after the 
mutant that let them find the locus) and modify the abbreviation for the name to 
denote whether the allele is wild type or a particular mutant or whatever.

I just used Greek since it's sciency sounding and makes harder to confuse the locus 
with the allele.

```

### Comment 6: commenter 13, 2008-06-16 00:35 UTC

```
Have each chromesome be (randomly) assigned to one type of trait.  For example one 
is the "blood" chromesome, another is the "breathing", "intelligence", etc.  For 
example, the "blood" chromesome would have (randomly chosen) genes that determined 
clotting, sleep toxin resistance, drug resistance, maybe some kind of "your blood is 
made out of CCS remedy" or something.  This is a bit more organised than completely 
random arrangement, but still prevents poopsockers from memorizing everything like 
in the current version.

I think the number of genes is good, possible values for genes could come way down 
(maybe down to 4, so we can have A T C G for coolness), and chromesome numbers are 
fine (provided you can find a 'trait' for each).
```

### Comment 7: commenter 1, 2008-06-16 04:31 UTC

```
4 or 16 (AA, AT, AC, AG, etc) would be better, for sure, possibly with the names
changed to make sense from a science point of view? I'd like to use either letters or
numbers for the alleles, so they aren't too obnoxious to type if you need to. I dunno
about making particular chromosomes correspond to particular traits - depending on
how it was implemented, it might make things too easy for researchers. It'd be pretty
easy to add later on, anyways.
```

### Comment 8: commenter 13, 2008-06-21 05:50 UTC

```
How's this coming along?  Can't wait to toy with it or incorporate it into the 
game.  Just making sure you didn't forget about this little thing, kurper ;)
```

### Comment 9: commenter 1, 2008-06-21 13:56 UTC

```
DNA code itself (not that much work) is about 25% done at this point, I'd say.
Changing the rest of the code to work with the new DNA system (lots of work) is about
75% done or so.
Feel free to check out /branches/kurper/unstable if you want to check my progress -
that's where I'm doing the development on this.
```

### Comment 10: commenter 1, 2008-07-06 16:35 UTC

```
DNA system's basically done in unstable now, just need to do bugfixes, readding
features, merging in changes from stable, etc etc etc.
```

### Comment 11: commenter 1, 2008-07-06 16:35 UTC

```
DNA system's basically done in unstable now, just need to do bugfixes, readding
features, merging in changes from stable, etc etc etc.
```

### Comment 12: commenter 13, 2008-07-19 05:12 UTC

```
Add an alter genes function, where the user can manually change the alleles from one 
gene into their inputted ones.
```
