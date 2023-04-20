tam([], 0).
tam([_], 1).
tam([_|R], T) :- tam(R, T1), T is T1 + 1.

listarTamanhos([], []).
listarTamanhos([X], [T]) :- tam(X, T).
listarTamanhos([X|R], [T|RT]) :- tam(X, T), listarTamanhos(R, RT).