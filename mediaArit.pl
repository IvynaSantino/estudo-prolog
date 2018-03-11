/* Exercicio para calcular a média dos elementos da lista*/

soma([], 0).
soma([H|T], S) :- soma(T, R), S is H + R .

len([], 0).
len([H|T], L) :- len(T, R), L is R + 1.

media(L, M) :- soma(L, S), len(L, T), M is S/T.
