
% Equivalent resistance in series
series(R1, R2, Req) :-
    Req is R1 + R2.

% Equivalent resistance in parallel
parallel(R1, R2, Req) :-
    Req is (R1 * R2) / (R1 + R2).
  

Save it as resistance.pl

Execute the queries:

Query 1: Resistors in series
For \(R_1 = 10\ \Omega\) and \(R_2 = 20\ \Omega\):

series(10, 20, X).

Output:

X = 30

Formula: \(R_{eq} = R_1 + R_2\)

Query 2: Resistors in parallel
For \(R_1 = 10\ \Omega\) and \(R_2 = 20\ \Omega\):

parallel(10, 20, X).

Output:

X = 6.6666667

Formula: \(R_{eq} = \frac{R_1R_2}{R_1+R_2}\)
