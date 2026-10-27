Open Notepad and copy this complete code: and save as food.pl


% Facts
food(burger).
food(sandwich).
food(pizza).

lunch(sandwich).
dinner(pizza).

% Rule
meal(X) :- food(X).


Execute the queries in prolog.
Query 1:
food(X).
Output:
X = burger ? ;
X = sandwich ? ;
X = pizza ?

Press ; to see the next answer. Continue until all three foods are displayed.

Query 2:
meal(burger).
output:
yes

Query 3:
meal(pizza).
Output:
yes

Query 4:
meal(X).
Output:
X = burger ? ;
X = sandwich ? ;
X = pizza ?
