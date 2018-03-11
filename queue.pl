/* Exercicio: Implementar uma fila -> Add no final, remove no inicio*/

ins(X, L, [X|L]).
insereFim(X, [], [X]).
insereFim(N, [H], L) :- ins(H, [N], L).
insereFim(N, [H|T], L) :- insereFim(N, T, X), ins(H, X, L).

removeInicio([_|T], T).

topo([H|T], H).

len([], 0).
len([H|T], T) :- len(T, X), T is X + 1.

completa(H, M) :- len(H,R), R >= 4, M = 'Cheia'.
completa(H, M) :- M = 'Possui espacos'.

vazia(H, M) :- len(H, R), R =:= 0, M = 'Vazia'. 
