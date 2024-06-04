-module(dynamic_generics_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec named3_neg() -> [integer()].
named3_neg() ->
    lists:map(fun Fib(N) when N < 2 -> 1;
                  Fib(N) -> Fib(undefined) + Fib(N - 1)
              end,
              [1, 2, 3]).
