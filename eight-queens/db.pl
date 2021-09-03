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

print_row(_, 9) :- nl.
print_row(Queen, Queen) :-
  write("Q"),
  Count is Queen + 1,
  print_row(Queen, Count).
print_row(Queen, Distance) :-
  write(" "),
  Count is Distance + 1,
  print_row(Queen, Count).

print_queens([]).
print_queens([Queen|Queens]) :-
  print_row(Queen, 1),
  print_queens(Queens), !.

queens(Queens) :-
  length(Queens, 8),
  Queens ins 1..8,
  all_different(Queens),
  safe(Queens),
  label(Queens),
  print_queens(Queens).
