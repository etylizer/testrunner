-module(result_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-export_type([result/2]).
-spec map_error(fun((X) -> Y),
                result(X, A)) -> result(Y, A).
map_error(_F, {'$#result:result.ok', V}) ->
    {'$#result:result.ok', V};
map_error(F, {'$#result:result.err', E}) ->
    {'$#result:result.err', F(E)}.
-spec map_error(fun((X) -> Y)) -> fun((result(X,
                                              A)) -> result(Y, A)).
map_error(F) -> fun (Res) -> map_error(F, Res) end.
