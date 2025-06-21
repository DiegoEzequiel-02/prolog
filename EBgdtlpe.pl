%Donde N es el nombre de un hombre o una mujer, 
%A su altura (alta, media, baja), 
%C el color de su cabello (rubio, castaño, pelirrojo, negro), 
%E su edad (joven,adulta,vieja).

hombre(juan,alta,rubio,joven).
hombre(pedro,baja,pelirrojo,adulta).
hombre(ramiro,media,castaño,vieja).
mujer(paula,media,negro,adulta).
mujer(sofia,alta,rubio,joven).
mujer(silvia,baja,pelirrojo,vieja).

%Que indica que a la persona N le gusta el género de música M 
%(clásica, pop, jazz), el género de literatura L 
%(aventura, ciencia-ficción, policíaca), y 
%practica el deporte S (tenis, natación, jogging).

gusta(pedro,jazz,policíaca,natación).
gusta(silvia,jazz,policíaca,natación).
gusta(sofia,pop,aventura,tenis).
gusta(juan,clásica,policíaca,jogging).

%Que expresa que la persona N busca una pareja de altura A, 
%con cabello color C y edad E.

busca(paula,alta,castaño,joven).
busca(silvia,baja,pelirrojo,adulta).
busca(ramiro,baja,pelirrojo,adulta).
busca(juan,media,rubio,vieja).
busca(pedro,baja,pelirrojo,vieja).

%Se considera que dos personas x e y de sexos diferentes 
%son adecuadas si x conviene a y e y conviene a x. 
%Se dice que x conviene a y si x conviene físicamente a y 
%(la altura, edad y color de cabello de y son los que busca x) y si, 
%además, los gustos de x e y en música, literatura y deporte coinciden.

conviene(X,Y):-
    hombre(X,AX,CX,EX),
    mujer(Y,AY,CY,EY),
    busca(X,AY,CY,EY),
    busca(Y,AX,CX,EX),
    gusta(X,MX,LX,SX),
    gusta(Y,MY,LY,SY),
    MX == MY,
    LX == LY,
	SY == SX.
