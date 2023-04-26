mdc(A,B,_):- A<0;B<0,!,write('Numero negativo'),nl,fail.

mdc(A,0,R):- R is A,!.
mdc(0,B,R):- R is B,!.
mdc(A,B,R):- RestDiv is mod(A/B), RestDiv =:= 0, R is B,!.
mdc(A,B,R):- RestDiv is mod(A/B), mdc(B, RestDiv, R1), R is R1.