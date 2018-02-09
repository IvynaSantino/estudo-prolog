calculadora(S, X, Y, R) :- S == +, R is (Y + X).
calculadora(S, X, Y, R) :- S == -, R is (X - Y).
calculadora(S, X, Y, R) :- S == x, R is (X * Y).
calculadora(S, X, Y, R) :- S == d, R is (X / Y).

