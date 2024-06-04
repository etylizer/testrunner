-module(maybe_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-export_type([maybe/1]).
-spec map(fun((A) -> B), maybe(A)) -> maybe(B).
map(F, {'$#maybe:maybe.just', Value}) ->
    {'$#maybe:maybe.just', F(Value)};
map(_F, {'$#maybe:maybe.nothing'}) ->
    {'$#maybe:maybe.nothing'}.
