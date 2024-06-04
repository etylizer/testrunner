-module(result_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-export_type([result/2]).
-spec from_maybe(X, maybe:maybe(A)) -> result(X, A).
from_maybe(_Err, {'$#maybe:maybe.just', V}) ->
    {'$#result:result.ok', V};
from_maybe(Err, {'$#maybe:maybe.nothing'}) ->
    {'$#result:result.err', Err}.
