-module(gen_server_incorrect_args).

-behaviour(gen_server).

-export([init/1, handle_cast/2, handle_call/3]).

% MOD: fixed missing callbacks
init([]) ->
    {ok, []}.

handle_cast(_Event, State) ->
    {ok, State}.


handle_call(_Request, From, _State) ->
    case From of
	'boo' -> {'ok'};
	'foo' -> {'no'}
    end.