is_hora(H):- H>=0, H=<23.
is_min(M) :- M>=0, M=<59.
is_seg(S) :- S>=0, S=<59.

is_horario(H,M,S):- is_hora(H), is_min(M), is_seg(S).