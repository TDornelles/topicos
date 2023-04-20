maiorDaLista([X], X).
maiorDaLista([X,Y],X) :- X >= Y.
maiorDaLista([X,Y],Y) :- Y > X.
maiorDaLista([X|R], X) :- maiorDaLista(R, Z), X >= Z.
maiorDaLista([X|R], Z) :- maiorDaLista(R, Z), Z > X.

retirarPrimeiroMaior([_],[]).
retirarPrimeiroMaior([X,Y],[Y]) :- maiorDaLista([X,Y],X).
retirarPrimeiroMaior([X,Y],[X]) :- maiorDaLista([X,Y],Y).
retirarPrimeiroMaior([X|R],R) :- maiorDaLista([X|R],X).
retirarPrimeiroMaior([X|R],[X|NR]) :- maiorDaLista([X|R],Z), X \== Z, retirarPrimeiroMaior(R,NR).

retirarTodosMaior([_],[]).
retirarTodosMaior([X,Y],[Y]) :- maiorDaLista([X,Y],X).
retirarTodosMaior([X,Y],[X]) :- maiorDaLista([X,Y],Y).
retirarTodosMaior([X|R],L) :- retirarPrimeiroMaior([X|R],L), maiorDaLista(L,M1), maiorDaLista([X|R],M2), M1 \== M2.
retirarTodosMaior([X|R],L) :- retirarPrimeiroMaior([X|R],L1), maiorDaLista(L1,M1), maiorDaLista([X|R],M2), M1 == M2, retirarTodosMaior(L1,L).
