hombre(damian, alto, castaño, adulto).
hombre(raul, medio, rubio, joven).
hombre(juan, bajo, negro, adulto).

mujer(natalia, alta, pelirrojo, joven).
mujer(sofia, baja, castaño, adulta).
mujer(marta, media, negro, adulta).

gusta(damian, jazz, aventura, tenis).
gusta(raul, pop, ciencia-ficcion, natacion).
gusta(juan, clasica, policiaca, jogging).

gusta(natalia, pop, aventura, tenis).
gusta(sofia, clasica, ciencia-ficcion, natacion).
gusta(marta, jazz, policiaca, jogging).

busca(damian, baja, castaño, joven).
busca(raul, alta, pelirrojo, adulta).
busca(juan, media, negro, joven).

busca(natalia, medio, rubio, adulto).
busca(sofia, bajo, castaño, joven).
busca(marta, alto, negro, adulto).

%Se considera que dos personas x e y de sexos diferentes 
%son adecuadas si x conviene a y e y conviene a x. 

%Se dice que x conviene a y si x conviene físicamente a y 
%(la altura, edad y color de cabello de y son los que busca x) 
%y si, además, los gustos de x e y en música, literatura y deporte coinciden.

adecuadas(x,y):- 
    busca(x,Altura, Cabello, Edad),
    (hombre(y,Altura,Cabello,Edad);mujer(y,Altura,Cabello,Edad)),
    x\= y.

