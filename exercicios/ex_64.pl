tam([], 0).
tam([_], 1).
tam([_|R], T) :- tam(R, T1), T is T1 + 1.

somarElementos([], 0).
somarElementos([X], X).
somarElementos([X, Y], S) :- S is X + Y.
somarElementos([X|R], S) :- somarElementos(R, SR), S is X + SR.

mediaAritmetica([], 0).
mediaAritmetica([X], X).
mediaAritmetica(L, M) :- tam(L, T), somarElementos(L, S), M is S / T.