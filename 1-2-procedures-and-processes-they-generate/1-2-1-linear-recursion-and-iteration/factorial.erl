-module(factorial).
-export([start/0]).

fact1(1) -> 1;
fact1(N) -> N * fact1(N-1).

start() ->
				io:fwrite("~w~n",[fact1(7)]).

% Compile:
% erlc factorial erl

% Start:
% erl -noshell -s factorial start -s init stop