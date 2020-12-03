% violates(fdcpa_1692e, DC, A) :- illegal_threat(DC, A).
    
illegal_threat(_, A) :- 
    will_happen(A, _, _),
    violation(_, A),!.

illegal_threat(_, A) :- happen(A, _), not(A),!.