fat(N,_):- N<0, !, write('Numero negativo'), nl, fail.
fat(0,1).
fat(N,Result):- N>0,
    			N1 is N-1,
    			fat(N1, R1),
    			Result is N*R1.