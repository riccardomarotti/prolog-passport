color(Color) :-
  member(Color, [red, yellow, blue, orange]).

border(Country1, Country2) :-
  color(Country1),
  color(Country2),
  dif(Country1, Country2).

coloring(Chile, Argentina, Bolivia, Uruguay, Paraguay, Peru, Brazil) :-
  border(Chile, Argentina),
  border(Chile, Bolivia),
  border(Chile, Peru),
  border(Peru, Bolivia),
  border(Bolivia, Paraguay),
  border(Argentina, Bolivia),
  border(Argentina, Uruguay),
  border(Argentina, Paraguay),
  border(Argentina, Bolivia),
  border(Brazil, Peru),
  border(Brazil, Bolivia),
  border(Brazil, Paraguay),
  border(Brazil, Argentina),
  border(Brazil, Uruguay).
