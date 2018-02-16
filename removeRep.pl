maior([A], A).
maior([A|B], R) :- maior(B, S), (A > S -> R = A; R = S).

menor([A], A).
menor([A|B], R) :- menor(B, S), (A < S -> R = A; R = S).

soma([],0).
soma([H|T],S):-soma(T,G),S is H+G.

somaDif(M, ME, S, SD) :- SD is ((M - ME) + S).

:- initialization(main).

main :-
	repeat,
	read(L1),
	maior(L1, M),
	menor(L1, ME),
	soma(L1, S),
	somaDif(M, ME, S, SD),
	write(SD),nl,
	halt(0).
