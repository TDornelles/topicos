maiorDaLista([X], X).
maiorDaLista([X,Y],X) :- X >= Y.
maiorDaLista([X,Y],Y) :- Y > X.
maiorDaLista([X|R], X) :- maiorDaLista(R, Z), X >= Z.
maiorDaLista([X|R], Z) :- maiorDaLista(R, Z), Z > X.