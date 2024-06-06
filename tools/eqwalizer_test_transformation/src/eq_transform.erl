-module(eq_transform).

%% API exports
-export([main/1]).

%%====================================================================
%% API functions
%%====================================================================
 
% TODO don't insert all record and type definitions into every split test case
    % would be nice if we could not insert all recs and types into every split test case
    % is is_record the only special case? 


calls_from_fun(X) ->
    GetCalls = fun(Z) -> case Z of
        {call,_,{atom, _, MethodName}, Args} -> {rec, {MethodName, length(Args)}, Args};
        {'fun',_,{function, MethodName, Args}} -> {rec, {MethodName, Args}, Args};
        _ -> error
    end end,
    lists:uniq(everything(GetCalls, X)).

records_from_fun(X) ->
    GetCalls = fun(Z) -> case Z of
        {record,_, RecName, Args} -> {rec, RecName, Args};
        {type,_, record, [{atom,_,RecName} | Fields]} -> {rec, RecName, Fields};
        _ -> error
    end end,
    lists:uniq(everything(GetCalls, X)).

types_from_fun(X) ->
    GetCalls = fun(Z) -> case Z of
        % {record,_, RecName, Args} -> {rec, RecName, Args};
        % {attribute,_, type, {Name, R}} -> {rec, Name, R};
        {user_type,_, Name, Args} -> {rec, {Name, length(Args)}, Args};
        _ -> error
    end end,
    lists:uniq(everything(GetCalls, X)).

%% escript Entry point
main([]) -> erlang:halt(0);
main([File | Fs]) ->
    put(module, filename:rootname(filename:basename(File))),
    {ok, Forms} = epp:parse_file(File, []),

    case length(
        [Spec || Spec = {attribute, _, behavior, _} <- Forms] 
            ++ [Spec || Spec = {attribute, _, behaviour, _} <- Forms]
            ++ [Spec || Spec = {attribute, _, callback, _} <- Forms]
            ) > 0 of
        true -> io:format(user, "Behaviors and callbacks not supported: ~p~n", [File]), main(Fs);
        _ ->
        io:format("File to parse: ~p~n", [File]),
        io:format("File to parse: ~p~n", [Forms]),
        % Filter specs, functions, types, records
        Specs = [Spec || Spec = {attribute, _, spec, _} <- Forms],
        Funs = [Fun || Fun = {function, _, _, _, _} <- Forms],

        % records and types get inserted into every split test
        Recs = [Spec || Spec = {attribute, _, record, _} <- Forms],
        Types = 
        [Spec || Spec = {attribute, _, type, _} <- Forms] 
            ++ [Spec || Spec = {attribute, _, opaque, _} <- Forms] 
            ++ [Spec || Spec = {attribute, _, export_type, _} <- Forms]
            ++ [Spec || Spec = {attribute, _, compile, _} <- Forms],


        % for every fun (== test case) include:
        % license
        % all records
        % all types
        % etc
        % recursively all referenced local fun calls
        put(c, 1),
        Res = lists:foreach(fun(F) -> catch split_test_case(File, F, Funs, Specs, Recs, Types) end, Funs),
        io:format("~p~n", [Res]),
        main(Fs)
    end.

split_test_case(File, Fun = {function, Loc, Name, NumArgs, _}, Funs, Specs, Recs, Types) ->
    AllFuns = get_all_funs_to_print([Fun], [], Funs),
    SimpleFuns = [{Name, Args} || {function, _, Name, Args, _} <- AllFuns],
    OnlyLocs = lists:uniq([Locc || {function, Locc, Name, Args, _} <- AllFuns] ++ [Loc]),
    AllSpecs = [S || S = {attribute,_,spec,{Target, _}} <- Specs, lists:member(Target, SimpleFuns)],

    % io:format("Search dependencies in: ~p~n", [{AllFuns, AllSpecs}]),
    AllRecsAndTypes = lists:uniq(lists:flatten(get_all_recs_and_types_to_print([AllFuns, AllSpecs], [], [], Recs, Types))),
    % io:format("Got used records and types: ~p~n", [AllRecsAndTypes]),

    case length(AllFuns) == length(AllSpecs) of
        true ->
            % getting the category is a bit hacky
            % ideally, we could run eqwalizer on the file and get the result
            % could this lead to a different categorization?
            % instead do statc substring check and fetch expected result from the .check file
            
            {ok, Content} = file:read_file(File),
            {ok, Content2} = file:read_file(File++".check"),

            Res = 
            lists:foldl(
                fun(ILoc, Res) -> 
            % get nth line
            FunLine = string:slice(lists:nth(ILoc, string:split(Content, "\n", all)), 0, 41),
            All = string:split(Content2, "\n", all),
            [SingleResult] = [Z || Z <- [string:prefix(X, FunLine) || X <- All], Z /= nomatch],
            Cat = case {string:find(SingleResult, "OK"), string:find(SingleResult, "ERROR")} of 
                {nomatch, nomatch} -> "ignore" ;
                {nomatch, _} -> "fail" ;
                {_, nomatch} -> "pass"
            end,
            lists:uniq(Res ++ [Cat])
                end, [], OnlyLocs),

            % getting very late
            Cat = case Res of
                [Single] -> 
                    Single;
                ["fail", "pass"] -> 
                    "fail";
                ["pass", "fail"] -> 
                    "fail";
                _ -> 
                    io:format(user,"Ignoring test case, could not retrieve category: ~p~n", [Fun]),
                    throw(todo)
            end,
                    % ensure no INVALID is contained in the test file, not supported yet
                    nomatch = string:find(Content2, "INVALID"),
                    io:format(user,"~s.erl :: ~p/~p (~p)~n", [get(module), Name, NumArgs, Cat]),
                    Counter = get(c),
                    ok = filelib:ensure_dir(Cat++"_"++get(module) ++ "/"),
                    FName = 
                        
                    Cat++"_"++get(module) ++ "/" ++ get(module)++ "_" ++ integer_to_list(Counter) ++ ".erl",
                    {ok, T} = file:open(FName, [write]),

                    io:format(T, "-module(~s_~s).~n", [get(module), integer_to_list(Counter)]),
                    io:format(T, "~s~n", [license()]),
                    io:format(T, "-compile([export_all, nowarn_export_all]).~n", []),

                    % records and types
                    
                    [io:format(T, "~s~n", [fun_to_string(X)]) || X <- AllRecsAndTypes],
                    % io:format("Got remote types: ~p~n", [AllRecsAndTypes]),

                    % function and deps
                    [io:format(T, "~s~n~s~n", [fun_to_string(Y), fun_to_string(X)]) || {X, Y} <- lists:zip(AllFuns, AllSpecs)],

                    
                    % try to compile
                    case compile:file(FName, [{outdir, "/tmp"}]) of % TODO create tmp dir
                        {ok, _} -> 
                            {ok, Forms} = epp:parse_file(FName, []),
                            GetRemoteCalls = fun(Z) -> case Z of
                                {'remote_type',_ ,_} -> {ok, remote_type};
                                _ -> error
                            end end,
                            Remotes = everything(GetRemoteCalls, Forms),
                            % io:format(user,"FORMS: ~p~nWith remote? ~n~p~n", [Forms, Remotes]),
                            HasRemoteTypes = length(Remotes) > 0,

                            case HasRemoteTypes of
                                true -> 
                                    io:format("Ignoring test case, has remote types: ~p~n", [FName]),
                                    put(c, Counter + 1),
                                    file:delete(FName);
                                _ -> 
                                    % io:format("OK: ~p~n", [FName]),
                                    put(c, Counter + 1), 
                                    ok
                                end;
                        _ -> 
                            put(c, Counter + 1), 
                            file:delete(FName),
                            io:format(user,"~p Generated bad test: ~s :: ~p/~p~n", [FName, get(module), Name, NumArgs])
                    end;
                    
        _ -> 
            io:format(user,"Ignoring test case, missing specs: ~p~n", [Fun])
    end.

get_all_recs_and_types_to_print([], _Visited, Res, _, _) -> 
    Res;
get_all_recs_and_types_to_print([FunOrSpec | Rest], Visited, Res, AllRecs, AllTypes) -> 
    case lists:member(FunOrSpec, Visited) of 
        true -> 
            get_all_recs_and_types_to_print(Rest, Visited, Res, AllRecs, AllTypes);
        _ ->
            Records = records_from_fun([FunOrSpec]),
            Types = types_from_fun([FunOrSpec]),
            NewRecords = [T || T = {attribute, _, record, {Name, _}} <- AllRecs, lists:member(Name, Records)],
            NewTypes = [T || T = {attribute, _, type, {Name, _, TyVars}} <- AllTypes, lists:member({Name, length(TyVars)}, Types)],
            NewTypes2 = [T || T = {attribute, _, opaque, {Name, _, TyVars}} <- AllTypes, lists:member({Name, length(TyVars)}, Types)],
            get_all_recs_and_types_to_print(Rest, [FunOrSpec | Visited], NewRecords ++ NewTypes2 ++ NewTypes ++ Res, AllRecs, AllTypes)
    end.

get_all_funs_to_print([], Visited, _Funs) -> Visited;
get_all_funs_to_print([Fun | Fs], Visited, Funs) ->
    case lists:member(Fun, Visited) of 
        true -> get_all_funs_to_print(Fs, Visited, Funs);
        _ ->
            OtherCalls = calls_from_fun(Fun),
            NewFuns = [F || F = {function, _, Name, Args, _} <- Funs, lists:member({Name, Args}, OtherCalls)],
            get_all_funs_to_print(Fs ++ NewFuns, [Fun | Visited], Funs)
    end.

fun_to_string(Fun) ->
    erl_prettypr:format(erl_syntax:form_list([Fun])).

%%====================================================================
%% Internal functions
%%====================================================================

get_funs(Fun = {function, _, _, _, _}) -> 
    io:format(user, "Got function...~p~n", [Fun]),
    #{Fun => 1};
get_funs(Spec = {attribute, _Loc, spec, {Name, _}}) -> #{{spec, Spec} => 1};
get_funs(_) -> #{}.


% Generically traverses the lists and tuples of a term
% and performs replacements as demanded by the given function.
% - If the function given returns {ok, X}, then the term is replaced
%   by X, no further recursive traversal is done.
% - If the function given returns {rec, X, Cont}, then the term is replaced
%   by X, and recursive traversal is done on Cont.
% - If the funtion returns error, then everywhere traverses the term recursively.
% Generically transforms the term given and collects all results Tk
% where the given function returns {ok, T} for a term. No recursive calls
% are made for such terms
% 
-spec everything(fun((term()) -> t:opt(T)), term()) -> [T].
everything(F, T) ->
    TransList = fun(L) -> lists:flatmap(fun(X) -> everything(F, X) end, L) end,
    case F(T) of
        error ->
            case T of
                X when is_list(X) -> TransList(X);
                X when is_tuple(X) -> TransList(tuple_to_list(X));
                _ -> []
            end;
        {ok, X} -> [X];
        {rec, Z, Cont} ->
            case Cont of
                Cont when is_list(Cont) -> [Z] ++ TransList(Cont);
                Cont when is_tuple(Cont) -> [Z] ++ TransList(tuple_to_list(Cont));
                _ -> []
            end
    end.


license() ->
    "%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.\n%%% This source code is licensed under the Apache 2.0 license found in \n%%% the LICENSE file in the root directory of this source tree.".


% it's very late
sublist([], _) -> true;
sublist(_, []) -> false;
sublist([H | T1], [H | T2]) -> sublist(T1, T2);
sublist(X, Y) when is_list(X), is_list(Y) -> 
    false.
