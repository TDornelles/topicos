media_aritmetica([], 0):- !.
media_aritmetica(Lista, Media):-
    somatorio(Lista, Soma),
    length(Lista, Tamanho),
    Media is Soma/Tamanho.

somatorio([], 0):- !.
somatorio([H|T], Soma):-
    is_list(H),
    somatorio(H, S),
    somatorio(T, R),
    Soma is S + R, !;
    somatorio(T, R),
    Soma is H + R.
