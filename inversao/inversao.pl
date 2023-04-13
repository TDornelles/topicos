insUltimo([], X, [X]).
insUltimo([P|R], X, [P|NR]) :- insUltimo(R, X, NR).
