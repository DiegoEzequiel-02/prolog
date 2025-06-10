fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,Resultado):-
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,Parcial),
    fibonacci(N2,Parcial2),
    Resultado is Parcial + Parcial2.


fibonacciM(1,1,0).
fibonacciM(N,R,R1):-
    N > 1,
    N1 is N-1,
    fibonacciM(N1,R1,R2),
    R is R1 + R2.

fibonacciM(0,0).

fibonacciM(N,R):-
    fibonacciM(N,R,_).