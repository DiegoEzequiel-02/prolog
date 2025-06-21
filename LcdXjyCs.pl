%Suma de todos los valores de una lista. suma/2 (Lista, Total)
suma([],0).
suma([X|XS], T):-
    suma(XS,P),
    T is P + X.

%Contar cuantos valores repetidos de un elemento hay en una lista. 
%contar/3 (Lista, Elemento, Cantidad)

contar([],_,0).
contar([X|XS],E,C):-
    X == E,
    contar(XS,E,P),
    C is P + 1.

contar([X|XS],E,C):-
    X \= E,
    contar(XS,E,C).

%Buscar todas las posiciones de un elemento en una lista. 
%indice_de/3 (Lista, Elemento, Posicion)
indice_de_aux([], _, _, []).
indice_de_aux([X|XS],E,Pos,[Pos|T]):-
    X == E,
    Pos1 is Pos+1,
    indice_de_aux(XS,E,Pos1,T).

indice_de_aux([X|XS],E,Pos,T):-
    X \= E,
    Pos1 is Pos+1,
    indice_de_aux(XS,E,Pos1,T).

indice_de([],_,[]).
indice_de([X|XS],E,Pos):-
    indice_de_aux([X|XS],E,0,Pos).

%Para un listado de 0 a n hechos nota/1, con notas de 1 a 10, 
%hallar el promedio de las mismas. promedio_nota/1


contar_numeros([],0).
contar_numeros([_|XS],C):-
    contar_numeros(XS,P),
    C is P + 1.

nota(8).
nota(6).
nota(7).

promedio_nota(Promedio):-
    findall(N, nota(N), [X|XS]),
    suma([X|XS],RS),
    contar_numeros([X|XS],CN),
    CN > 0,
	Promedio is RS // CN.
    



