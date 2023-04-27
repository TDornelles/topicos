ultimo_elemento([Ultimo],Ultimo).
ultimo_elemento([_|Tail],Ultimo):-
    ultimo_elemento(Tail,Ultimo).