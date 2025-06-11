%lARGO DE LISTA VACIA ES 0 (CASO BASE)
largo([], 0).
largo([_ | L], N) :-
    largo(L, N1),
    N is N1 + 1.     
	%SI EL LARGO DE L E N1, ENTONCES EL LARGO DE LA LISTA SERÁ N1 + 1

solucion_miembro(X,[X|_]).
solucion_miembro(X,[_|T]):-solucion_miembro(X,T).