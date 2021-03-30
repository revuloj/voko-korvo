# Prologo

## Lerni la bazojn de Prologo

### Unuaj paŝoj

<!-- https://www.metalevel.at/prolog/concepts -->

Bazaj terminoj:

- atomo
- variablo
- predikato
- fakto
- unuigo

*Atomoj* estas nomoj (vortoj) kiuj staras por si mem. Ili komenciĝu per minusklo aŭ alie estu enfermitaj en simplaj citiloj: `banano`, `flava`, `'ruĝa'`, `'Ludoviko'`.

*Variabloj* povas preni iujn valorojn: nombrojn, atomojn, esprimojn ktp. Ili havas majusklan nomon: `A`, `B`, `Homo`. 
Anonima variablo komenciĝas per substreko `_`, oni povas uzi ĝin, se la valoro ne interesas.

*Predikato* estas esprimo el nomo kun arbitra nombro de argumentoj. La nombron de argumentoj oni indikas post oblikvo: `pluvas/0`, `frukto/1`, `homoe/1`, `koloro/2`, `geedzoj/3`.
Prediktaojn oni difinas per kolekto de *klaŭzoj*, kiuj siavice povas esti *faktoj* aŭ *reguloj*. 

Jen kelkaj faktoj por la supre nomitaj predikatoj. Regulojn ni rigardos pli poste.

```prolog
pluvas.

frukto(banano).
frukto(pomo).
frukto(frago).
frukto(frambo).
frukto(pruno).
frukto(kukumo).

koloro(banano,flava).
koloro(pomo,flava).
koloro(pomo,ruĝa).
koloro(frago,ruĝa).
koloro(frambo,rugha).
koloro(pruno,violkolora).
koloro(kukumo,verda).

homo('Ludoviko').
homo('Klara').

geedzoj('Ludoviko','Klara',1887).
```

Ni povas pridemandi predikatojn donante arbitrajn argumentojn. Laŭ la difinitaj faktoj (kaj reguloj), Prologo provos trovi solvojn.  

Jen ni demandas ĉu pluvas, pri la koloro de frukto, pri la fruktoj de certa koloro kaj ĉu certa frukto havas certan koloron, 
kaj ĉu Ludoviko edziĝis kaj kun kiu kaj kiam:

```prolog
?- pluvas.
true.

?- koloro(kukumo,K).
K = verda.

?- koloro(F,rugha).
F = pomo ;
F = frago ;
F = frambo ;
false.

?- koloro(banano,flava).
true.

?- geedzoj('Ludoviko',P,J).
J = 1887,
P = 'Klara' ;
false.
```

Vi povas elprovi tion rekte sur retpaĝo de [SWI-Ŝelo](https://swish.swi-prolog.org/), aŭ alternative instali SWI-Prologon, meti la faktojn en dosieron, kiun vi ŝargas per `swipl faktoj.pl` kaj poste pridemandi.

Per *reguloj* vi povas riĉigi viajn faktojn. Ekzemple ĉe geedzoj la ordo de la unuaj du argumentoj estas egalaj. Do se vi demandus `geedzoj('Klara',P,J).` vi ne ricevus respondon. Do aŭ vi devus ĉiam doni du faktojn aŭ pli bone uzi aldonan regulon:

```prolog
geedzoj('Ludoviko','Klara',1887).
geedzoj(P1,P2,J) :- geedzoj(P2,P1,J).
```

Se vi nun demand pri Klara, vi ricevos la atendian respondon. Sed vi ankaŭ rimarkos problemon kun la regulo.

```prolog
?- geedzoj('Klara',P,J).
J = 1887,
P = 'Ludoviko' 

?- geedzoj(P,Q,_).
P = 'Ludoviko',
Q = 'Klara' ;
P = 'Klara',
Q = 'Ludoviko' ;
P = 'Ludoviko',
Q = 'Klara' ;
P = 'Klara',
Q = 'Ludoviko' ;
P = 'Ludoviko',
Q = 'Klara' ;
...
```

La regulo ĉiam denove aplikiĝos kaj trovas pli kaj pli da solvoj ĉiam interŝanĝante ambaŭ partnerojn. Tio estas ĉar la regulo vokas sin mem. Do ni devas krei apartan predikaton por malhelpi tion:

```prolog
geedzoj('Ludoviko','Klara',1887).

geedzoj2(P1,P2,J) :- geedzoj(P1,P2,J).
geedzoj2(P1,P2,J) :- geedzoj(P2,P1,J).
```

Tion ni ankaŭ povas skribi kiel alternativo.

```prolog
geedzoj('Ludoviko','Klara',1887).

geedzoj2(P1,P2,J) :- 
    geedzoj(P1,P2,J);
    geedzoj(P2,P1,J).
```

.... Klarigu kio estas unuigo

.... Klarigu kio estas retrospurado

... Klarigu kio estas tranĉo

... Klarigu = is ktp por doni faktojn laŭ iom alia maniero...

### Listoj

```prolog
?- Listo=[D,1,2,c], D is 4+5, Listo=[_,_|Resto].
Listo = [9, 1, 2, c],
D = 9,
Resto = [2, c].
```

Kion do ni ĵus faris? Ni difinis liston el kvar elementoj, kies unua estas variablo kaj la aliaj du nombroj kaj unu atomo.
Pri la variablo ni poste donis fakton ke ĝi estas la sumo el 4 kaj 5. Fine ni identigis la voston de la listo ekde la tria elemento kun la variablo `Resto`.


...Klarigu | kaj ,

... Klarigu `is` kaj `=`


Regulojn oni povas rikure difini, kio aparte estas utila ĉe listoj. Ni difinas predikaton elekto/3, kiu elektas arbitran elementon el listo kaj redonas reston de la listo sen tiu elemento.
Ni povas difini ĝin rikure tiel: redonu la unuan elementon aŭ redonu elementon el la vosto de la listo ekde la dua elemento.

```prolog
elekto(Kapo, [Kapo|Vosto], Vosto).
elekto(Elemento, [Kapo|Vosto], [Kapo|Resto]) :-
        elekto(Elemento, Vosto, Resto).
```

```prolog
?- elekto(X,[1,2,3],Resto).
X = 1,
Resto = [2, 3] ;
X = 2,
Resto = [1, 3] ;
X = 3,
Resto = [1, 2] ;
false.
```

Tio senpere funkcias ankaŭ en inversa direkto: ni donas la reston kaj variablon por la unua elemento kaj demandas eblajn listojn estiĝantajn per enmeto de la variablo en la diversajn lokojn:

```prolog
?- elekto(X,Listo,[2,3]).
Listo = [X, 2, 3] ;
Listo = [2, X, 3] ;
Listo = [2, 3, X] ;
false.
```

Kaj kompreneble oni povas ankaŭ demandi, ĉu iu elemento
troviĝas en listo:

```prolog
?- elekto(3,[1,2,3],_Resto_).
true.

?- elekto(4,[1,2,3],_Resto_).
false.
```

Per la predikato `maplist` ni povas apliki predikaton
al ĉiujn ĝiaj elementoj:

```prolog
?- maplist(plus(3),[1,2,3],S).
S = [4, 5, 6].

?- A=99, maplist(writeln,[[A,B,C],[1,2,3],[ni,lernas,'Prologon']]).
[99,_G251,_G254]
[1,2,3]
[ni,lernas,Prologon]
A = 99.
```
