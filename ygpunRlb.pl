%lARGO DE LISTA VACIA ES 0 (CASO BASE)
largo([], 0).
largo([_ | L], N) :-
    largo(L, N1),
    N is N1 + 1.     
	%SI EL LARGO DE L E N1, ENTONCES EL LARGO DE LA LISTA SERÁ N1 + 1

solucion_miembro(X,[X|_]).
solucion_miembro(X,[_|T]):-solucion_miembro(X,T).

%Pudiendo utilizar predicados existentes, resolver
%Para un listado de 0 a n hechos nota/1, con notas de 1 a 10, hallar el promedio de las mismas. promedio_nota/1
obtener_cant([],0).
obtener_cant([_|T],C):- obtener_cant(T,C1), C is C1+1.
suma([],0).
suma([H|T],R):- H >= 1, H =< 10, suma(T,C1), R is C1 + H.
promedio_nota([]).
promedio_nota([H|T]):- obtener_cant([H|T],C),H > 0,suma([H|T],S), P is S/C, write(P).
