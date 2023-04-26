primo(Num):-
    Num>1,
    primo(Num,2,0,Divisores),
    Divisores = 0,!.
primo(Num,Iterador,Acumulador,Divisores):-
    Iterador =:= Num,
    Divisores is Acumulador,!.
primo(Num,Iterador,Acumulador,Divisores):-
    0 is Num mod Iterador,
    ProxIterador is Iterador+1,
    ProxAcumulador is Acumulador+1,
    primo(Num,ProxIterador,ProxAcumulador,Divisores).
primo(Num,Iterador,Acumulador,Divisores):-
    A is Num mod Iterador,
    A \= 0,
    ProxIterador is Iterador+1,
    primo(Num,ProxIterador,Acumulador,Divisores).