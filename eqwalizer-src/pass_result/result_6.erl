-module(result_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-spec map2(fun((A, B) -> C), result(X, A),
           result(X, B)) -> result(X, C).
map2(_Func, {'$#result:result.err', X}, _) ->
    {'$#result:result.err', X};
map2(_Func, {'$#result:result.ok', _},
     {'$#result:result.err', X}) ->
    {'$#result:result.err', X};
map2(Func, {'$#result:result.ok', A},
     {'$#result:result.ok', B}) ->
    {'$#result:result.ok', Func(A, B)}.
-spec map2(fun((A, B) -> C)) -> fun((result(X, A),
                                     result(X, B)) -> result(X, C)).
map2(Func) ->
    fun (ResA, ResB) -> map2(Func, ResA, ResB) end.
