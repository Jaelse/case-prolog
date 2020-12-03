% time(0..1095).

h1 :- happen(pay(oberther, midland, 500), I), I <= 30.
c1 :- not h1.


h2 :- happen(call(oberther, midland, setup_remaining_payments), I), I <= 30.
c2 :- not h2.


h3 :- happen(call(oberther, midland, check_discounts_and_payment_plans), I), I <= 30.
c3 :- not h3.

% Original TC considitions
tc :- c1, c2.
tc :- c3.

% Legal TC considitions
% tc :- c1, c2, not lc.
% tc :- c3, not lc.

forward(midland, attorney, account(oberther)) :- tc.