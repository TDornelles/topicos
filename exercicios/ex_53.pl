inserir_ordenado([], Elemento, [Elemento]).
inserir_ordenado([Head|Tail], Elemento, [Elemento,Head|Tail]) :-
    Elemento =< Head.
inserir_ordenado([Head|Tail], Elemento, [Head|Tail2]) :- 
    Elemento > Head, 
    inserir_ordenado(Tail, Elemento, Tail2).