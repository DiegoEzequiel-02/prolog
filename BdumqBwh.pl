ave(paloma).
ave(cigueña).
ave(tucán).

culpable(paloma).

ver(paloma,cigueña).
ver(tucán,paloma).
ver(tucán,cigueña).
ver(cigueña,paloma).

no_fue_visto(X):-ver(X, _), \+ver(_, X). % Es visto | No lo ve nadie

vio_crimen(A):-ver(A, B), culpable(B).

testigo(A):- vio_crimen(A), no_fue_visto(A).

testigo_silencioso(A):- forall(no_fue_visto(A),vio_crimen(A)).

