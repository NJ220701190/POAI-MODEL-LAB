parent(jack, miguel).
parent(jack, sandy).
parent(miguel, alice).
parent(miguel, bob).
parent(sandy, charlie).
parent(susan, miguel).
parent(susan, sandy).
parent(david, jack).
parent(emily, jack).
parent(anna, bob).
parent(lucas, charlie).

child(X, Y) :- parent(Y, X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, z), parent(z, Y).
aunt(X, Y) :- sibling(X, Z), parent(Z, Y).
uncle(X, Y) :- sibling(X, Z), parent(Z, Y).
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W).

% output
% ?- child(alice, mary). - true
% ?- grandparent(david, alice). - false
% ?- cousin(alice, charlie). - true