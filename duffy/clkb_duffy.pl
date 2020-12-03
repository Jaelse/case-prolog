debt_collector(landberg).
dishonored_check(duffy, 25).
% dishonored_check(quaderer, 24.40).

% dishonored_check(hacken, 11.38).

creditor(snyder_drug).
creditor(mgm_liquor).

happen(demand_payment(landberg, check_amount(25), duffy), 0).
happen(demand_payment(langberg, service_charge(20), duffy), 0).
happen(demand_payment(landberg, collection_fee(10), duffy), 0).
happen(demand_payment(landberg, civil_penalty(100), duffy), 0).
% happen(litigation, 30).

will_happen(seek(landberg, attorney_fee(_), duffy), 1095, I) :- 
    happen(litigation, I).


