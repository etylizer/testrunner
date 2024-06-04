-module(maybe_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-export_type([maybe/1]).
-spec and_then(fun((A) -> maybe(B)),
               maybe(A)) -> maybe(B).
and_then(Callback, {'$#maybe:maybe.just', Value}) ->
    Callback(Value);
and_then(_Callback, {'$#maybe:maybe.nothing'}) ->
    {'$#maybe:maybe.nothing'}.
