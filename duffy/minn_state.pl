demand_payment(A, check_amount(X), B) :- dishonored_check(B, X), debt_collector(A),!.

demand_payment(A, service_charge(X), B) :- dishonored_check(B, _), X =< 20, debt_collector(A),!.

demand_payment(A, collection_fee(X), B) :- dishonored_check(B, _), X =< 30, debt_collector(A), !.

demand_payment(A, civil_penalty(X), B) :- 
    dishonored_check(B, _), 
    court_decide(X, B), 
    debt_collector(A),
    X =< 100.

seek(A, attorney_fee(_), B) :- 
    debt_collector(A),
    dishonored_check(B, Z),
    Z >= 1250.


violation(minn_stat, A) :- not(A),!.

% court_decide(0,x).