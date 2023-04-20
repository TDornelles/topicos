concat([], Y, Y).
concat([X], Y, [X|Y]).
concat([X|R], Y, [X|NR]) :- concat(R, Y, NR).

flatten([], []).
flatten(X, [X]) :- atomic(X).
flatten([X|R], F) :- flatten(X, FX), flatten(R, FR), concat(FX, FR, F).