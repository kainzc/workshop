% Facts
mother(mary, fred).
barks(fido).
smart(cs3270student).

% Rules
dog(X) :- barks(X).
dog(X) :- wags_tail(X).
