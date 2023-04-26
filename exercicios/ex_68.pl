contem_valor([], _):- fail.
contem_valor([X|_], X):- !.
contem_valor([H|T], X):-
    is_list(H),
    contem_valor(H, X), !;
    contem_valor(T, X).
