:- use_module(library(xpath)).

% voku ekz-e kiel:
% swipl dom1.pl

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

kap(_,Kap) :-
    % elprenu la tutan tekstenhavon
    % de la elemento 'kap'
    xpath(Kap,/self(text),Text),
    format('kap: ~w~n',[Text]).