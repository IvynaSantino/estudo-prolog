/* Exercicio: implementar uma pilha -> empilha, desempilha, topo*/

insereInicio(E, L, [E|L]).

empilha(E, [H], L) :- insereInicio(H, [E], L).
empilha(E, [H|T], L) :- empilha(E, T, X), insereInicio(H, X, L).

ultimoElem([H], H).
ultimoElem([H|T], U) :- ultimoElem(T, U).

removeInd(0,[_|T], T).
removeInd(I, [H|T], L) :- X is I - 1, removeInd(X, T, L2), insereInicio(H, L2, L).

len([], 0).
len([H|T], L) :- len(T, X), L is X + 1.

desempilha([H], []).
desempilha(H, L) :- len(H, R),removeInd((R-1),H,L).

topo([H|T], H).

/* Admitindo que a pilha possui 5 espacos!!*/

completa(H, M) :- len(H, N), N >= 4, M = 'Cheia'.
completa(H, M) :- M = 'Possui espaco(s) livre(s)'.

vazia(H, M) :- len(H,R), R =:= 0, M = 'Vazia'.
vazia(H, M) :- M = 'Possui elementos'.
