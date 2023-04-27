get_elemento([Head|_],1,Head).
get_elemento([_|Tail],NumElemento,Elemento):-
    get_elemento(Tail,NumElemento,2,Elemento).
get_elemento([Head|_],NumElemento,Iterador,Elemento):-
    Iterador = NumElemento,
    Elemento is Head.
get_elemento([_|Tail],NumElemento,Iterador,Elemento):-
    ProxIterador is Iterador+1,
    get_elemento(Tail,NumElemento,ProxIterador,Elemento).