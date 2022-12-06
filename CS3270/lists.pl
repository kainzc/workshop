%% Lecture 26
%%
%% Demo of list processing in Prolog



% member test -- determine if an item exists in a list
my_member(Item,[Item|_]).
my_member(Item,[_|Tail]) :- my_member(Item,Tail).



% append two lists -- need a third parameter to carry back the result
%my_append(Lst1,Lst2,Result)
my_append([], Lst2, Lst2).
my_append([Head|Tail], Lst2, [Head|Result]) :- my_append(Tail,Lst2,Result).
%my_append([Head|Tail], Lst2, Result2) :- my_append(Tail,Lst2,Result),Result2=[Head|Result].



% remove the first occurrence of an item from a list
my_remove(_,[],[]).
my_remove(Item,[Item|Tail],Tail).
my_remove(Item,[Head|Tail],[Head|Result]) :- Item \== Head, my_remove(Item,Tail,Result).

% alternatively
%my_remove(_,[],[]).
%my_remove(Item,[Item|Tail],Tail) :- !.   % cut operator
%my_remove(Item,[Head|Tail],[Head|Result]) :- my_remove(Item,Tail,Result).



% filter -- only keep elements in a list that satisfy a predicate.
%   predicate in this case will be even numbers



