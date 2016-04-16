-module(diff).
-export([missing/1]).

missing([H|T]) -> missing(H, T, 0, []).

missing(_, [], D, V) -> V;
missing(F, [H|T], D, V) -> missing(H, T, H-F, [H-F|V]).
