menorDaLista([X], X).
menorDaLista([X,Y],X) :- X =< Y.
menorDaLista([X,Y],Y) :- Y < X.
menorDaLista([X|R], X) :- menorDaLista(R, Z), X =< Z.
menorDaLista([X|R], Z) :- menorDaLista(R, Z), Z < X.

retirarPrimeiroMenor([_],[]).
retirarPrimeiroMenor([X,Y],[Y]) :- menorDaLista([X,Y],X).
retirarPrimeiroMenor([X,Y],[X]) :- menorDaLista([X,Y],Y).
retirarPrimeiroMenor([X|R],R) :- menorDaLista([X|R],X).
retirarPrimeiroMenor([X|R],[X|NR]) :- menorDaLista([X|R],Z), X \== Z, retirarPrimeiroMenor(R,NR).