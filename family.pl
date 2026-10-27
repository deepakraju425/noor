create family.pl file in notepad 


% Facts: Gender
female(catherine).
female(sophia).
female(elizabeth).

male(X) :- \+ female(X).

% Facts: Family Hierarchy
parent(james1, charles1).
parent(james1, elizabeth).
parent(charles1, catherine).
parent(charles1, james2).
parent(charles1, charles2).
parent(elizabeth, sophia).
parent(sophia, george).

% Rules
mother(X,Y) :- parent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).
sibling(X,Y) :- parent(P,X), parent(P,Y), X \= Y.
aunt(X,Y) :- female(X), parent(P,Y), sibling(X,P).
uncle(X,Y) :- male(X), parent(P,Y), sibling(X,P).
grandparent(X,Y) :- parent(P,Y), parent(X,P).
cousin(X,Y) :- parent(P,X), parent(Q,Y), sibling(P,Q).


In prolog load it 

The query we have to write

Query 1:
mother(X, catherine).
Output:
false.
Reason:Charles I is Catherine's parent, but he is male. No female parent is given for Catherine.

Query 2: 
aunt(X, george).
Output :
false.
uncle(X, george).
Output :
X = charles1.
Reason: Charles I is the brother of Elizabeth, who is Sophia's mother. Sophia is George's mother. Therefore, Charles I is George's uncle.

Query 3:
grandparent(X, george).
Output:
X = elizabeth.
Reason: Elizabeth is Sophia's mother, and Sophia is George's mother.


