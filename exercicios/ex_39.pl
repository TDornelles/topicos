tem_elemento([Head|_],Elemento):-
    Head = Elemento.
tem_elemento([Head|Tail],Elemento):-
    Head \= Elemento,
    tem_elemento(Tail,Elemento).