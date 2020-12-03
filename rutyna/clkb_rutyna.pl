will_happen(investigate(cat, neighbor, debt(rutyna)), 1095, 0).

will_happen(call(cat, employer, debt(rutyna)), 1095, 0).

under_cut(investigate(cat, neighbor, debt(rutyna)), 1095, I) :- 
    happen(pay(rutyna, cat, the_debt), I), I =< 30.

under_cut(call(cat, employer, debt(rutyna)), 1095, I) :- 
    happen(pay(rutyna, cat, the_debt), I), I =< 30.