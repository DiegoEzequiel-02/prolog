entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne('filete de cerdo').
carne('pollo asado').

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

menu(Entrada, Principal, Postre):-
    entrada(Entrada), (carne(Principal);pescado(Principal)), postre(Postre).

menu_con_consome(Principal, Postre):-
    entrada(consomé), (carne(Principal);pescado(Principal)), postre(Postre).

menu_sin_flan(Entrada, Principal, Postre):-
    entrada(Entrada), (carne(Principal);pescado(Principal)), postre(Postre),
    Postre \= flan.

menu_con_carne(Entrada, Principal, Postre):-
    entrada(Entrada), carne(Principal), postre(Postre).

menu(Entrada, Principal, Postre, Bebida):-
    entrada(Entrada), (carne(Principal);pescado(Principal)), postre(Postre), bebida(Bebida).