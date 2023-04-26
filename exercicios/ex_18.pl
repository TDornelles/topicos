triangulo(A,B,C):- A<B+C, B<A+C, C<B+C.
tipo_triangulo(A,B,C, Tipo):- triangulo(A,B,C), 
                              (
                                A==B, B==C -> 
                                Tipo = 'Equilatero';
                                ((A==B; A==C; B==C) -> Tipo = 'Isoleces'; Tipo = 'Escaleno')
                              ).