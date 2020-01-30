male(steve).

male(jack).
male(jake).

male(john).
male(danny).
male(brian).
male(bever).
male(ethan).

male(matt).
male(duffy).
male(ian).
male(eric).
male(johnny).
male(aiden).
male(jake).

male(harrison).
male(bill).

female(anne).

female(elieen).
female(dianne).

female(rene).
female(stephanie).
female(kathy).
female(nancy).
female(luna).

female(spencer).
female(jacqueline).
female(anna).
female(rachael).
female(lauren).


age(steve, 120).

age(jack, 90).
age(kyle, 89).

age(john, 56).
age(danny, 45).
age(brian, 52).
age(bever, 60).
age(ethan, 60).

age(matt, 22).
age(duffy, 26).
age(ian, 25).
age(eric, 28).
age(johnny, 21).
age(aiden, 10).
age(jake, 19).

age(harrison, 1).
age(bill, 1).

age(anne, 119).

age(elieen, 88).
age(dianne, 90).

age(rene, 52).
age(stephanie, 40).
age(kathy, 50).
age(nancy, 51).
age(luna, 55).

age(spencer, 19).
age(jacqueline, 24).
age(anna, 22).
age(rachael, 24).
age(lauren, 21).


child(jack, steve).
child(jack, anne).

child(dianne, steve).
child(dianne, anne).

child(john, jack).
child(danny, jack).
child(brian, jack).
child(nancy, jack).
child(john, elieen).
child(danny, elieen).
child(brian, elieen).
child(nancy, elieen).

child(ethan, kyle).
child(ethan, dianne).

child(johnny, john).
child(spencer, john).
child(johnny, rene).
child(spencer, rene).

child(aiden, danny).
child(aiden, stephanie).

child(duffy, brian).
child(matt, brian).
child(jacqueline, brian).
child(duffy, kathy).
child(matt, kathy).
child(jacqueline, kathy).

child(eric, bever).
child(ian, bever).
child(anna, bever).
child(eric, nancy).
child(ian, nancy).
child(anna, nancy).

child(lauren, ethan).
child(lauren, luna).

child(bill, lauren).
child(bill, jake).

child(harrison, duffy).
child(harrison, rachael).


grandparent(X, Y) :-
    child(X, Z),
    child(Z, Y).

parent(X, Y) :-
    child(Y, X).

father(X, Y):-
    male(X),
    parent(X, Y).

grandfather(X,Y):- 
    male(X),
    grandparent(Y,X).

sibling(X, Y) :-
    child(X, Z),
    father(Z, Y),
    Y\=X.

nthcousin(X,Y, 1):-
    parent(Z, X),
    sibling(Z, Siblings),
    parent(Siblings, Y).

nthcousin(X,Y, 2):-
    grandfather(Z, X),
    sibling(Z, M),
    parent(M,C),
    parent(C,Y).

nthcousinkremoved(X,Y,1,1):-
    parent(Z, X),
    sibling(Z, Siblings),
    parent(Siblings, F),
    child(Y, F).

nthcousinkremoved(X,Y,2,1):-
    grandfather(Z, X),
    sibling(Z, M),
    parent(M,C),
    parent(C,S),
    child(Y, S).

kthchild(C, P, K):-
    parent(P, Children),
    C = age(Children, K).

    


    
    
    
