/* Fila de prioridade, maiores ou igual a 60 -- idoso */

pessoas(joao, 60).
pessoas(lidia, 90).
pessoas(maria, 13).
pessoas(joana, 33).
pessoas(helena, 59).

prioridade(X, I) :- pessoas(X, M), I = prioridade, M >= 60.
prioridade(X, I) :- pessoas(X, M), I = espera, M < 60.

:- initialization(main).

main :-
	repeat,
	read(X),
	prioridade(X, I),
	write(I), nl,
	halt(0).
	
	
