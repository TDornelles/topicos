/* Utiliza a inserir_ordenado do arquivo ex_53.pl */
ordenar(Lista,ListaOrdenada):-
    ordenar(Lista,ListaOrdenada,[]).
ordenar([],ListaOrdenada,ListaOrdenada).
ordenar([Head|Tail],ListaOrdenada,NovaLista):-
    inserir_ordenado(NovaLista,Head,ListaInserida),
    ordenar(Tail,ListaOrdenada,ListaInserida).