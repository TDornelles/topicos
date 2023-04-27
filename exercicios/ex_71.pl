primeiro_atomico([Head|_],Head):-
    \+ is_list(Head).
primeiro_atomico([Head|Tail],Valor):-
    is_list(Head),
    primeiro_atomico(Tail,Valor).