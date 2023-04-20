menorDaLista([X], X).
menorDaLista([X,Y],X) :- X =< Y.
menorDaLista([X,Y],Y) :- Y < X.
menorDaLista([X|R], X) :- menorDaLista(R, Z), X =< Z.
menorDaLista([X|R], Z) :- menorDaLista(R, Z), Z < X.

retirarUltimoMenor([_],[]).
retirarUltimoMenor([X,Y],[Y]) :- menorDaLista([X,Y],X).
retirarUltimoMenor([X,Y],[X]) :- menorDaLista([X,Y],Y).
retirarUltimoMenor([X|R],R) :- menorDaLista([X|R],X), menorDaLista(R,Z), X \== Z.
retirarUltimoMenor([X|R],[X|NR]) :- menorDaLista([X|R],Z1), menorDaLista(R,Z2), Z1 == Z2, retirarUltimoMenor(R,NR).