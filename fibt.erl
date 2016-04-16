-module(fibt).
-export([fib/1]).

fib(N) -> fib(N, 1, 0).

fib(0, V, _) -> V;
fib(N, V, A) when N > 0 -> fib(N-1, V+A, V).
