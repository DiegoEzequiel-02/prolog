parcial1(ana,7).
parcial1(juan,4).
parcial1(julio, 2).
parcial1(maria, 10).

parcial2(ana,9).
parcial2(juan,8).
parcial2(julio, 4).
parcial2(maria, 2).

promocionan(Alumno):-
    parcial1(Alumno,N1),
	parcial2(Alumno,N2),
    N1 >= 7, 
    N2 >= 7.

promocionan_con_promedio(Alumno, Nota):-
    parcial1(Alumno,N1),
	parcial2(Alumno,N2),
    N1 >= 7, 
    N2 >= 7,
    Nota is (N1 + N2) / 2.

recursan(Alumno):-
	parcial1(Alumno,N1),
	parcial2(Alumno,N2),
    (N1 < 4; N2 < 4).

cursada(Alumno):-
	parcial1(Alumno,N1),
	parcial2(Alumno,N2),
    (N1 >= 4, N2 >= 4),
    (N1 < 7; N2 < 7).


max_promocion(PromMax) :-
    findall(P, (promocionan(A), promedio(A, P)), Lista),
    max_list(Lista, PromMax).

promedio(Alumno, Prom) :-
    parcial1(Alumno, N1),
    parcial2(Alumno, N2),
    Prom is (N1 + N2) / 2.

medalla_merito(Alumno, Prom) :-
    promocionan(Alumno),
    promedio(Alumno, Prom),
    max_promocion(Prom).

%usar estas dos para el ultimo punto

max_promedio(Max) :-
    findall(P, promedio(_, P), Lista),
    max_list(Lista, Max).

segundo_max_promedio(SegMax) :-
    findall(P, promedio(_, P), Lista),
    max_list(Lista, Max),
    exclude(=(Max), Lista, Resto),
    max_list(Resto, SegMax).
    

