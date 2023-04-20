menorDaLista([X], X).
menorDaLista([X,Y],X) :- X =< Y.
menorDaLista([X,Y],Y) :- Y < X.
menorDaLista([X|R], X) :- menorDaLista(R, Z), X =< Z.
menorDaLista([X|R], Z) :- menorDaLista(R, Z), Z < X.