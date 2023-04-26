% TODO: validar ano e termina meses 

jan(01,31).
fev(02,28).
mar(03,30).
abr(04,31).
mai(05,30).
jun(06,31).

mes(M, Dias):- jan(M, X), Dias =< X, Dias >0; 
               fev(M, X), Dias =< X, Dias >0;
    		   mar(M, X), Dias =< X, Dias >0;
    		   abr(M, X), Dias =< X, Dias >0;
    		   mai(M, X), Dias =< X, Dias >0;
    		   jun(M, X), Dias =< X, Dias >0.
    			
valid_date(D,M):- mes(M,D).