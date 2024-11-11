% 1.
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% 2. first element
first(E, [E|_]).

% 3. last element
last([X], X).
last([_|T], X) :- last(T, X).

% 4. penultimate
penultimate([X,_], X).
penultimate([_|T], X) :- penultimate(T, X).

% 5. remove an element
del_k(X, [X|Xs], 1, Xs).
del_k(X, [Y|Xs], K, [Y|Ys]) :-
    K > 1,
    K1 is K - 1,
    del_k(X, Xs, K1, Ys).

% 6. length of the list
length([], 0).
length([_|T], N) :-
    length(T, N1),
    N is N1 + 1.

% 7.
even([]).
even([_,_|T]) :- even(T).

% 8. concatenation
concat([], L, L).
concat([X|L1], L2, [X|L3]) :-
    concat(L1, L2, L3).

% 9. ppalindrome
palindrome(L) :- reverse(L, L).
reverse(L, R) :- reverse(L, [], R).

reverse([], Acc, Acc).
reverse([H|T], Acc, R) :-
    reverse(T, [H|Acc], R).
