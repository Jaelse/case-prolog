h1 :- happen(pay(graziano, antonio, 80), T), T =< 10.
c1 :- not(h1).

% original TC conditions
precondition :- c1.

legal_action(antonio, graziano) :- precondition.

% Legal condition 
% tc :- c1, not lc.
ge