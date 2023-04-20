somarElementos([], 0).
somarElementos([X], X).
somarElementos([X, Y], S) :- S is X + Y.
somarElementos([X|R], S) :- somarElementos(R, SR), S is X + SR.