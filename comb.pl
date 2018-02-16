primEle([A|B], A).

ultEle([A], A). 
ultEle([A|B], M) :- ultEle(B, M).

comb(A, B, C, D, R) :- A == B, C == D, R = "poetica".
comb(A, B, C, D, R) :- A \= B, R = "naopoetica".
comb(A, B, C, D, R) :- C \= D, R = "naopoetica".

:- initialization(main).

main :- 
	repeat,
	read(L1),
	read(L2),
	primEle(L1, A),
	primEle(L2, B),
	ultEle(L1, C),
	ultEle(L2, D),
	comb(A, B, C, D, R),
	write(R),nl,
	halt(0).

