first(List, First) :- [First | _] = List.

final([Final], Final).
final([_|Tail], Final) :-
  final(Tail, Final).

total([], 0).
total([H|T], Total) :-
  total(T, CurrentTotal),
  Total is CurrentTotal + H.


sum(List, Total) :- sum(List, 0, Total).

sum([], Final, Final).
sum([H|T], Acc, Final) :-
  Current is Acc + H,
  sum(T, Current, Final).


rev(List, Result) :- rev(List, [], Result).

rev([], Result, Result).
rev([H|T], Acc, Result) :-
  rev(T, [H|Acc], Result).