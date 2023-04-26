eq(A,_,_):- A == 0,!,write('Sem solucao'),nl,fail.
eq(_,B,_):- B == 0,!,write('Sem solucao'),nl,fail.
eq(A,B,Result):- Result is (-B/A).