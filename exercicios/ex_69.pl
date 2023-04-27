nivel_encaixamento(Lista,Nivel):-
    nivel_encaixamento(Lista,Nivel,0).
nivel_encaixamento([],Nivel,Nivel).
nivel_encaixamento([Head|_],Nivel,Acumulador):-
    is_list(Head),
    ProxAcumulador is Acumulador+1,
    nivel_encaixamento(Head,Nivel,ProxAcumulador).
nivel_encaixamento([_|Tail],Nivel,Acumulador):-
    nivel_encaixamento(Tail,Nivel,Acumulador).