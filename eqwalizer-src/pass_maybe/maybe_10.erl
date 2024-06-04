-module(maybe_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type maybe(A) :: {'$#maybe:maybe.just', A} |
                  {'$#maybe:maybe.nothing'}.
-export_type([maybe/1]).
-spec destruct(B, fun((A) -> B), maybe(A)) -> B.
destruct(_Default, Func, {'$#maybe:maybe.just', A}) ->
    Func(A);
destruct(Default, _Func, {'$#maybe:maybe.nothing'}) ->
    Default.
