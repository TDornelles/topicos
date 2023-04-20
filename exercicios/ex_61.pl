maiorDaLista([X], X).
maiorDaLista([X,Y],X) :- X >= Y.
maiorDaLista([X,Y],Y) :- Y > X.
maiorDaLista([X|R], X) :- maiorDaLista(R, Z), X >= Z.
maiorDaLista([X|R], Z) :- maiorDaLista(R, Z), Z > X.

retirarUltimoMaior([_],[]).
retirarUltimoMaior([X,Y],[Y]) :- maiorDaLista([X,Y],X).
retirarUltimoMaior([X,Y],[X]) :- maiorDaLista([X,Y],Y).
retirarUltimoMaior([X|R],R) :- maiorDaLista([X|R],X), maiorDaLista(R,Z), X \== Z.
retirarUltimoMaior([X|R],[X|NR]) :- maiorDaLista([X|R],Z1), maiorDaLista(R,Z2), Z1 == Z2, retirarUltimoMaior(R,NR).