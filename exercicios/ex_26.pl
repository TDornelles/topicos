% div = divisor atual
% acumulador = soma dos divisores

% iniciando a parada
soma_divisores(N, Soma) :-
    N >= 0,
    soma_divisores(N, 1, 0, Soma).

% todos os divisores testados
% N is the last divisor
soma_divisores(N, Div, Acumulador, Soma) :-
    Div > N / 2,
    Soma is Acumulador + N.

soma_divisores(N, Div, Acumulador, Soma) :-
    Div =< N / 2,
    Resto is N mod Div,
    (   
        Resto =:= 0 ->  
        NovoAcumulador is Acumulador + Div;   
        NovoAcumulador is Acumulador
    ),
    ProximoDiv is Div + 1,
    soma_divisores(N, ProximoDiv, NovoAcumulador, Soma).