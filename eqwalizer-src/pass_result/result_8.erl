-module(result_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-export_type([result/2]).
-spec and_then(fun((A) -> result(X, B)),
               result(X, A)) -> result(X, B).
and_then(Callback, {'$#result:result.ok', Value}) ->
    Callback(Value);
and_then(_Callback, {'$#result:result.err', Msg}) ->
    {'$#result:result.err', Msg}.
-spec and_then(fun((A) -> result(X,
                                 B))) -> fun((result(X, A)) -> result(X, B)).
and_then(Callback) ->
    fun (Res) -> and_then(Callback, Res) end.
