/* Exercicio para calcular o tamanho da lista*/

len([], 0).
len([H|T], L) :- len(T, R), L is R + 1.
