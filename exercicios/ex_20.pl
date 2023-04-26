valid_triangle(A,B,C):- Total is (A+B+C), 
    					Total==180.

triangle_angles(A,B,C,Tipo):- valid_triangle(A,B,C),
                            (   
                                (A<90, B<90, C<90) ->  
                                Tipo = 'ACU';
                                (   
                                    (A==90; B==90; C==90) ->  
                                    Tipo = 'RET';
                                    Tipo = 'OBT'
                                )
                            ).