sum_interval(A,B,_):- A>B,!, write('intervalo inexistente'),nl,fail.

sum_interval(A,B,Sum):- A=:=B, Sum is A.

sum_interval(A,B,Sum):- A<B,
    					A1 is A+1,
                        sum_interval(A1,B,Sum1),
                        Sum is Sum1+A.