:- use_module(library(xpath)).

% voku ekz-e kiel:
% swipl dom2.pl

:- initialization(ek).

ek :-
    load_xml('model.xml',Doc,[]),
    drv(Doc).

drv(Doc) :-
    % adresu la unuan elementon 'drv' 
    % kun la atributo 'mrk'
    xpath(Doc,//drv(1,@mrk=Mrk),Drv),
    format('mrk: ~w~n',[Mrk]),
    % adresu la elementidon 'kap' de 'drv'
    xpath(Drv,kap,Kap),
    kap(Doc,Kap).

% la plibonigita difino por kap() 
kap(Doc,Kap) :-
    write('kap: '),
    xpath(Kap,/self(content),List),
    forall(
        member(Ido,List),
        once((
            % temas pri simpla teksta enhavo
            atomic(Ido),
            write(Ido)
            ;
            % temas pri elemento 'tld'
            Ido = element(tld,_,_),
            tld(Doc,Rad),
            write(Rad)
            ; 
            % ignoru 'ofc'...
            true 
        ))
    ).

tld(Doc,Rad) :-
    xpath(Doc,//rad(text),Rad).
