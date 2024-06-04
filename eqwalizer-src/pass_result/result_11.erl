-module(result_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type result(Error, Value) :: {'$#result:result.ok',
                               Value} |
                              {'$#result:result.err', Error}.
-export_type([result/2]).
-spec to_maybe(result(_, A)) -> maybe:maybe(A).
to_maybe({'$#result:result.ok', V}) ->
    {'$#maybe:maybe.just', V};
to_maybe({'$#result:result.err', _}) ->
    {'$#maybe:maybe.nothing'}.
