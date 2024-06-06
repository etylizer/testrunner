-module(eqwater_84).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(A) :: {ok, A} | {err, atom()}.
-spec map_result(fun((A) -> B), result(A)) -> result(B).
map_result(F, Res) ->
    case Res of
        {ok, A} -> {ok, F(A)};
        Err -> Err
    end.
