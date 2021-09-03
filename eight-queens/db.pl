:- use_module(library(clpfd)).

different_diagonals(Queen1, Queen2, Distance) :-
  abs(Queen1 - Queen2) #\= Distance.

safe_queen([], _, _).
safe_queen([Queen|Others], Target, Difference) :-
  different_diagonals(Queen, Target, Difference),
  safe_queen(Others, Target, Difference + 1).

safe([]).
safe([Queen|Rest]) :-
  safe_queen(Rest, Queen, 1),
  safe(Rest).

queens(Queens) :-
  length(Queens, 8),
  Queens ins 1..8,
  all_different(Queens),
  safe(Queens).