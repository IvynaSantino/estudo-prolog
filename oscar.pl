info(chicago, musical, marshall, 2003, 109).
info(amnesia, suspense, nolan, 2000, 113).
info(babel, drama, inarritu, 2006, 142).
info(senhorDosAneis, fantasia, jackson, 2004, 102).
info(capote, drama, miller, 2005, 98).
info(casablanca, romance, curtiz, 1942, 102).
info(belezaAmericana, drama, mendes, 2000, 122).
info(matrix, ficcao, wachowsk, 1999, 136).
info(meninaDeOuro, drama, clint, 2005, 132).
info(shrek, animacao, adamson, 2001, 90).
info(titanic, drama, cameron, 1997, 194).
info(gladiador, drama, scott, 2001, 155).
info(umaMenteBrilhante, drama, howard, 2002, 135).

melhor(2000, belezaAmericana).
melhor(2001, gladiador).
melhor(2002, umaMenteBrilhante).
melhor(2003, chicago).
melhor(2004, senhorDosAneis).
melhor(2005, meninaDeOuro).

dirigiu(F,D) :- info(F, _, D, _, _).

genero(F,G) :- info(F, G, _, _, _).

diretorMelhorFilme(A,D) :- melhor(A, F), info(F, _, D, _, _).

melhorFilme(D) :- info(F, _, D, _, _), melhor(_, F).
