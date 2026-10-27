Open Notepad and copy this code and save it has likes.pl


% Facts
likes(mary, food).
likes(mary, wine).
likes(mary, john).
likes(joseph, joseph).

% Rules
likes(john, X) :- likes(mary, X).
likes(john, X) :- likes(X, wine).
likes(john, X) :- likes(X, X).


Execute the queries:
Query 1:
likes(john, X).
Output:
X = food ? ;
X = wine ? ;
X = john ? ;
X = mary ? ;
X = joseph ?

Query 2:
likes(X, wine).
Output:
X = mary
John also likes wine because Mary likes wine. So, to find everyone who likes wine, Prolog should also return john through the rule.

Query 3:
likes(john, X), likes(mary, X).
Output:
X = food ? ;
X = wine ? ;
X = john

These are the items that both John and Mary like, based on the given facts and rules.
