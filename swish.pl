%Codifique en prolog las reglas necesarias para obtener el término N 
%en la serie de Gauss

% k = N * ( N - 1 ) / 2 | k = 1

gauss(0,0).
gauss(Numero, Termino):-
    Numero > 0,
    N1 is Numero-1,
    gauss(N1,Parcial),
    Termino is Parcial + Numero.

%Codifique en prolog las reglas necesarias para obtener el término N 
%en la serie de Fibonacci (sin, y con mejora)

%SIN

fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,R):-
    N > 0,
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,Parcial),
    fibonacci(N2,Parcial2),
    R is Parcial + Parcial2.

%Codifique en prolog las reglas necesarias para obtener el factorial 
%de un número natural N.

factorial(0,1).

factorial(N,R):-
    N> 0,
   	N1 is N-1,
    factorial(N1,P),
    R is N * P.

%Codifique en prolog las reglas necesarias para obtener el producto 
%de dos numeros X e Y, aplicando sumas sucesivas.

producto_sumas_sucesivas(_,0,0).
producto_sumas_sucesivas(X,Y,R):-
    Y > 0,
    Y1 is Y-1,
    producto_sumas_sucesivas(X,Y1,P),
    R is P + X.

%Codifique en prolog las reglas necesarias para obtener la potencia 
%N de un numero X aplicando multiplicaciones sucesivas.

potencia_mults_sucesivas(_,0,1).
potencia_mults_sucesivas(X,Y,R):-
    Y >= 0,
    Y1 is Y-1,
    potencia_mults_sucesivas(X,Y1,P),
    R is P * X.

%Codifique en prolog las reglas necesarias para obtener el cociente 
%entre dos números a partir de restas sucesivas.

cociente_restas_sucesivas(X, Y, 0) :-
    X < Y.

cociente_restas_sucesivas(X,Y,R):-
    X>= Y,
    X1 is X-Y,
    cociente_restas_sucesivas(X1,Y,P),
    R is P + 1.
