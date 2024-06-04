-module(vars_in_beh_spec).

-behaviour(gen_server).

-export([init/1, handle_call/3, handle_cast/2, code_change/3]).

-spec code_change(_, State, _) -> {ok, State}.
code_change(_, State, _) ->
    {ok, State}.

init(_) ->
    {ok, []}.

%% OK. No warning.
handle_call(_Request, _From, State) ->
    {noreply, State}.

%% Not exported. Should be a warning.
handle_cast(_Request, State) ->
    {noreply, State}.