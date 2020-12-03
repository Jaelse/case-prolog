violation(fdcpa_1692_c_b, A) :-
    A = investigate(DC,X,debt(C)),
    debt_collector(DC),
    consumer(C),
    not(exceptional(X)),!.

violation(fdcpa_1692_c_b, call(DC, X, debt(C))) :-
    debt_collector(DC),
    consumer(C),
    not(exceptional(X)),!.

exceptional(PERSON) :- consumer(PERSON).

% exceptional(PERSON) :- creditor(PERSON).