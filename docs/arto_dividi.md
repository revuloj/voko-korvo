# La arto dividi
## Konciza historieto de komputado

Oni povas rakonti la historion de komputiloj kaj komputado el multaj perspektivoj kaj mi ne estas eksperto pri ĉiaj ĝiaj detaloj. Sed mi volas rakonti ĝin tre koncize kiel arto dividi la rimedojn laŭ ĉiam pli lertaj manieroj.

### Divido de ciferoj

0 - 1 - duuma kalkulsistemo

### Divido de algoritmo en unuopajn operaciojn

Unu maŝino unu operacio, konstruo de la uzona atombombo...

### Trukartoj kaj taskoj

En la ~1970aj jaroj komputiloj estis salonplenigaj montroj kun nur kelkaj kB da memoro kaj granda bezono da elektro, da zorgado... Nur iniciita klerikularo rajtas aliri kaj manipuli ilin.

Tiuj, kiuj volis uzi ilin, devis stanci sian programon kiel taskon sur staketon da trukartoj, kiujn ili transdonis al la klerikuloj. Je sia vico la tasko prilaboriĝis, la rezulto eltajpiĝis kaj se mankis komo en la programkodo, oni devis ripeti la procedon dum la venontaj tagoj.

Ĉar la memoro estis tiom malampleksa ke nur unu tasko samtempe eblis kaj la kalkultempo tiom multkosta oni tiele dividis la tempon laŭ taskoj.

Tia maniero ne montriĝis daŭre tre praktika. Kiam inĝeniero inventis manieron konekti plurajn terminalojn per kabloj al la centra komputilo ĉiu uzanto povis sendi siajn taskojn rekte al ĝi. La divido en taskoj daŭris sed la intervaloj estis nun tiel rapide, ke oni povis rapide korekti erarojn kaj ripeti la taskon.

### Divido de memoro - plurtaskaj sistemoj

En la 1980 populariĝis personaj komputiloj, kiujn oni povis starigi apud aŭ sur skribotablon, kaj kiujn unuopa uzanto povis uzi dum unu, du horoj ekskluzive laŭ interkonsentita plano. Ne plu necesis vicigi la taskojn, sed aliflanke oni ekhavis pli kaj pli da memoro kaj oni komencis dividi la memoron inter pluraj programoj, kiuj ruliĝis kvazaŭ samtempe. Tiel oni povis ŝalti inter kalendaro kaj teksto, inter teksto kaj alia teksto, inter tabelo kaj teksto, inter redaktita teksto kaj ties prezento ktp.

Tamen oni devis interrompi programon por montri alian, kaj la memoro estis nur bonvole dividita, malbona aŭ malica programo povis skribi en la memoron de alia.

### Divido de procesoro 

Por solvi tiujn problemojn oni kreis procesorojn kaj mastrumsistemojn, kiuj kapablis rapide ŝalti inter diversaj programoj kaj certigis per administrado de memorpaĝoj, ke ĉiu programo povis vid nur la siajn datumojn. Por interŝanĝi datumojn inter programoj oni devis sendi mesaĝojn per helpo de la peranta mastruma sistemo.

### Divido de komputiloj al pluras mastrumsistemoj

Ekfloris pluraj mastrumsistemoj kaj utilaj funkciriĉaj aplikaĵoj kaj ekestis la problemo ke oni volis utiligi la plej avancajn aplikaĵojn de diversaj mastrumsistemoj. Tamen la budĝeto kaj spaco estis tro limigita por starigi plurajn komputilojn por ĉiu bezonata mastrumsistemo. Do oni inventis maniero ĉe la lanĉo de la komputilo elekti unu el pluraj instalitaj mastrumsistemoj, sed tio ne estis tre kontentiga solvo, ĉar por ŝanĝi oni devis sekurig interrzultojn, malŝalti, relanĉi la alian sistemon kaj legi la sekurigitajn dosierojn kun la alia aplikaĵo.

Aliflanke intertempe furoris Interreto kaj multaj komencis krei siajn retaplikaĵojn, ekz-e retvendejoj kiuj bezonis almenaŭ retpaĝojn, skript-lingvon kaj datumbazon. Tiel firmaoj ofertis tiujn kombinojn üer retserviloj kiel provizantoj. Sed provizi tutan komputilon por ĉiu unuopa retvendejeto ne estis tre profitiga kaj ili serĉis manieron ruli plurajn retaplikaĵojn sekure sur sama servilo.

Inventemaj inĝenieroj majstris ankaŭ tiun defion kaj inventis manieron kiel unu komputilo povis ruli plurajn mastrumajn sistemojn samtempe ŝajnigante al ili ekskluzivan komputilon per virtualigo de la efektiva komputilo. Nun unu komputilo povis imiti plurajn samtempe en kiuj povis instaliĝi diversaj sistemoj kaj oni povis tiujn uzi unu apud alia per apartaj fenestroj.

### Divido de mastruma sistemo

La postulemaj programistoj kaj uzantoj ankoraŭ ne estis tute kontentaj. Unu problemo estis, ke pluraj sistemoj samtempe bezonis ĉiu sian apartan memoron kaj kalkultemnpon kvankam konsiderinda parto de iliaj taskoj estis identa. Kroma problemo estis ke amasiĝis la aplikaĵoj kaj funkciaroj en unusola sistemo tiel, ke teni la interdependecoj puraj aŭ uzis samtemple plurajn eldonojn de la sama funkciaro kaŭzis multe da ĝenaj probemoj, kapdoloroj, sistemflegado...

Sed intertempe ekestis pluraj eblecoj izoli procesortempon, dosiersistemon, memoron, retrimedojn kaj linuksuloj iam kunmetis ĉion ĉi en maniero, ke oni al unu izolita programo povis ŝajnigi, ke ĝi uzas la mastruman sistemon kaj siajn funkciarojn ekskluzive. Tion oni nomis konteneroj (ni nomu ĝin procezujoj) kaj tiel oni solvis la du suprajn problemojn: la procezujoj dividis la mastruman sistemon kaj tamen estis sufiĉe izolitaj, sed la bezonatajn funkciarojn (bibliotekojn) ĉiu programo ricevis kun sia procezujo, tiel ke ili ne plu konfliktis kun tiuj de alia programo.

Sur la flanko de la retprovizantoj oni komencis malsintezi la retaplikaĵojn en pli malgrandajn partojn, tiel nomatajn servetojn, kiujn oni povis pli flekseble distribui kaj multobligi laŭbezone. La *Nubo* estis akuŝita. 
