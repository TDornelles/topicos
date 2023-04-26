is_primo(N,Res):- N<0, Res = 'Error: numero negativo',!.

is_primo(N,Res):- N>=0,
    			  is_primo(N, 1, 0, Res).

is_primo(N,Div,Acumu,Res):- Div>N/2,
    						TotalAcumu is Acumu+1,
							((TotalAcumu=:=2) -> Res='primo'; Res='not primo'),
    						!,write('Total divisores: '),write(TotalAcumu).
    						
is_primo(N,Div,Acumu,Res):- Div=<N/2,
    						RestDiv is mod(N,Div),
    						((RestDiv =:= 0) -> NewAcumu is Acumu+1; NewAcumu is Acumu),
    						NextDiv is Div+1,
    						is_primo(N, NextDiv,NewAcumu, Res).