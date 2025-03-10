-module(maybe_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-spec map(fun((A) -> B), maybe(A)) -> maybe(B).
map(F, {'$#maybe:maybe.just', Value}) ->
    {'$#maybe:maybe.just', F(Value)};
map(_F, {'$#maybe:maybe.nothing'}) ->
    {'$#maybe:maybe.nothing'}.
-spec map(fun((A) -> B)) -> fun((maybe(A)) -> maybe(B)).
map(F) -> fun (Maybe) -> map(F, Maybe) end.
