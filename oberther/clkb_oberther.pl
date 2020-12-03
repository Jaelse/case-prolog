h1 :- happen(pay(oberther, midland, 500), T), T =< 30.
c1 :- not(h1).


h2 :- happen(call(oberther, midland, setup_remaining_payments), T), T =< 30.
c2 :- not(h2).


h3 :- happen(call(oberther, midland, check_discounts_and_payment_plans), T), T =< 30.
c3 :- not(h3).

% Original TC considitions
precondition :- c1, c2, not(lc).
precondition :- c3, not(lc).

% Legal TC considitions
% tc :- c1, c2, not(lc).
% tc :- c3, not(lc).

forward(midland, attorney, account(oberther)) :- precondition.