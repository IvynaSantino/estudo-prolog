opAnd(true, true, true, true).
opAnd(_, _, _, false).

opOr(false, false, false, false).
opOr(_, _, _, true).

logic(X, Y, Z, S, R) :- S == and, opAnd(X, Y, Z, R).
logic(X, Y, Z, S, R) :- S == or, opOr(X, Y, Z, R).

:- initialization(main).

main :-
	repeat,
	read(X),
	read(Y),
	read(Z),
	read(S),
	logic(X, Y, Z, S, R),
	write(R), nl,
	halt(0).
