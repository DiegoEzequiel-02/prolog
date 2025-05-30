natacion(a).
natacion(b).
natacion(c).
natacion(d).

futbol(a).
futbol(b).
futbol(e).
futbol(f).

teatro(a).
teatro(c).
teatro(e).
teatro(g).

todas_las_acts(X):-
    natacion(X),futbol(X),teatro(X).

futbol_no_teatro(X):-
    futbol(X),
	\+ teatro(X).

actividad(X):-
    natacion(X);
	futbol(X);
	teatro(X).

%setof(X, actividad(X), Lista).

al_menos_dos_actividades(X) :-
    (natacion(X), futbol(X));
    (natacion(X), teatro(X));
    (futbol(X), teatro(X)).

%?- setof(X, al_menos_dos_actividades(X), Lista).

estudiantes(a).
estudiantes(b).
estudiantes(c).
estudiantes(d).
estudiantes(e).
estudiantes(f).
estudiantes(g).
estudiantes(h).
estudiantes(i).
estudiantes(j).

ninguna_actividad(X):-
    estudiantes(X),
    \+ natacion(X),
    \+ futbol(X),
    \+ teatro(X).
    