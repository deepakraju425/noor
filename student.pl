Open Notepad and copy this code and save it as student.pl

% Facts: Students study subjects
studies(amol, physics).
studies(omkar, physics).
studies(javed, chemistry).
studies(ashwin, mathematics).

% Facts: Professors teach subjects
teaches(karthik, physics).
teaches(chahal, chemistry).
teaches(jasprit, mathematics).
teaches(chahel, biology).

% Rules
professor(X, Y) :- teaches(X, Y).
student(X, Y) :- studies(X, Y).


Execute the queries:
Query 1:
studies(amol, X).
Output:
X = physics

Query 2:
professor(chahal, X).
Output:
X = chemistry

Query 3:
student(X, physics).
Output:
X = amol ? ;
X = omkar ?
Why? Karthik teaches Physics, and Amol and Omkar study Physics.
