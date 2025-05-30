hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).

niño(X,Y):- padre(Y,X).
hijo(X,Y):- padre(X,Y),hombre(X).
hija(X,Y):- padre(Y,X), mujer(X).
hermano_o_hermana(X,Y):-
    padre(P,X), padre(P,Y), X \= Y.
hermano(X,Y):- hermano_o_hermana(X,Y), hombre(X).
hermana(X,Y):- hermano_o_hermana(X,Y), mujer(X).