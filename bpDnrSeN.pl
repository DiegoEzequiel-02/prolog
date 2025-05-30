transporte(roma, 20).
transporte(londres, 30).
transporte(tunez, 10).

alojamiento(roma, hotel, 50).
alojamiento(roma, hostal, 30).
alojamiento(roma, camping, 10).
alojamiento(londres, hotel, 60).
alojamiento(londres, hostal, 40).
alojamiento(londres, camping, 20).
alojamiento(tunez, hotel, 40).
alojamiento(tunez, hostal, 20).
alojamiento(tunez, camping, 5).

%viaje(Ciudad, Duracion, Hospedaje, Precio):-
  %  transporte(Ciudad, PrecioTransporte),
   % alojamiento(Ciudad, Hospedaje, PrecioPorSemana),
   % Precio is PrecioTransporte + Duracion * PrecioPorSemana.

viajeeconomico(Ciudad, Duracion, Hospedaje, Precio,PrecioMaximo):-
    transporte(Ciudad, PrecioTransporte),
    alojamiento(Ciudad, Hospedaje, PrecioPorSemana),
    Precio is PrecioTransporte + Duracion * PrecioPorSemana,
	Precio =< PrecioMaximo.

viaje(Ciudad, Semanas, Hospedaje, Precio):-
    transporte(Ciudad, PrecioTransporte),
    alojamiento(Ciudad, Hospedaje, PrecioPorSemana),
    (   var(Semanas) ->   
    Precio = PrecioTransporte + Semanas * PrecioPorSemana;
   	Precio is PrecioTransporte + Semanas * PrecioPorSemana).


%Completar con viajeeconomico/5, 
%agregando un parámetro extra que defina el Precio máximo del viaje.