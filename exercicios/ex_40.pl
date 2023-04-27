/* Utiliza a tem_elemento do arquivo ex_39.pl */
quantos_elementos(Lista,Elemento,Quantidade):-
    tem_elemento(Lista,Elemento),
    quantos_elementos(Lista,Elemento,0,Quantidade).
quantos_elementos([],_,Acumulador,Quantidade):-
    Quantidade is Acumulador.
quantos_elementos([Head|Tail],Elemento,Acumulador,Quantidade):-
    Head = Elemento,
    ProxAcumulador is Acumulador+1,
    quantos_elementos(Tail,Elemento,ProxAcumulador,Quantidade).
quantos_elementos([Head|Tail],Elemento,Acumulador,Quantidade):-
    Head \= Elemento,
    quantos_elementos(Tail,Elemento,Acumulador,Quantidade).