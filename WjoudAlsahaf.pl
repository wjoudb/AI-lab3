male(mansour).
female(radiyah).
male(baher).
female(batlah).
male(alaa).
female(iman).
female(roqayah).
male(ahmed).
female(wjoud).
female(alhour).
male(mohammed).
female(fatimah).
male(tariq).
male(ali).
parent(mansour, baher).
parent(mansour, alaa).
parent(mansour, roqayah).
parent(radiyah, baher).
parent(radiyah, alaa).
parent(radiyah, roqayah).
parent(baher, wjoud).
parent(baher, alhour).
parent(alaa, tariq).
parent(alaa, ali).
parent(roqayah, mohammed).
parent(roqayah, fatimah).
parent(batlah, wjoud).
parent(batlah, alhour).
parent(iman, tariq). 
parent(iman, ali).
parent(ahmed, mohammed).
parent(ahmed, fatimah).

father(F, C) :- parent(F, C), male(F).
mother(M, C) :- parent(M, C), female(M).
sister(S, P) :- parent(X, S), parent(X, P), female(S), S \= P.
brother(B, P) :- parent(X, B), parent(X, P), male(B), B \= P.

