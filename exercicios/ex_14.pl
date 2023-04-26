somaDivisores(Num, Soma):-
	Num>0,
    somaDivisores(1, 0, Num, Soma).

somaDivisores(Iterador, Acumulador, Num, Soma):-
    Iterador>Num,
    Soma is Acumulador.

somaDivisores(Iterador, Acumulador, Num, Soma):-
    0 is Num mod Iterador,
    ProxAcumulador is Acumulador+Iterador,
    ProxIterador is Iterador+1,
    somaDivisores(ProxIterador, ProxAcumulador, Num, Soma).

somaDivisores(Iterador, Acumulador, Num, Soma):-
    ProxIterador is Iterador+1,
    somaDivisores(ProxIterador, Acumulador, Num, Soma).