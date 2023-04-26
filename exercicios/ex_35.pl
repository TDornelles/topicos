contar_elementos([], 0).
contar_elementos([_|T], N) :-
    contar_elementos(T, N1),
    N is N1 + 1.
