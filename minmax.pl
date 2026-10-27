
% Find minimum of two numbers
minimum(X, Y, X) :- X =< Y.
minimum(X, Y, Y) :- X > Y.

% Find maximum of two numbers
maximum(X, Y, X) :- X >= Y.
maximum(X, Y, Y) :- X < Y.

Save it has minmax.pl


Execute the queries:
Query 1: Find the minimum of 10 and 20

minimum(10, 20, X).

Output:

X = 10

Query 2: Find the maximum of 10 and 20

maximum(10, 20, X).

Output:

X = 20

Query 3: Find the minimum of 50 and 30

minimum(50, 30, X).

Output:

X = 30

Query 4: Find the maximum of 50 and 30

maximum(50, 30, X).

Output:
X = 50
