/* Faça um programa que representa 3 entradas, R G B, entre 0 e 255. 
Se pelo menos um dos valores estiver abaixo de 128, o programa deve 
imprimir PRETO indicando que aquele pixel deve ser convertido para preto. 
Caso os 3 valores estejam igual ou acima de 128, 
o programa deve exibir BRANCO. Veja o exemplo.
*/

cores(R, G, B, S) :- R < 128, S = preto.
cores(R, G, B, S) :- G < 128, S = preto.
cores(R, G, B, S) :- B < 128, S = preto. 
cores(R, G, B, S) :- R >= 128, G >= 128, B >= 128, S = branco.

:- initialization(main).

main :-
	repeat,
	read(R),
	read(G),
	read(B),
	cores(R, G, B, S),
	write(S), nl,
	halt(0).
