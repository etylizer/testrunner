-module(funs_43).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type int_result() :: fun(() -> {ok, integer()} |
                                error).
-type getter(A) :: fun((atom()) -> A).
-type stream(A) :: eos | {head, A}.
-spec lambda_app() -> number().
lambda_app() ->
    Res = fun Fib(N) when N < 2 -> 1;
              Fib(N) -> Fib(N - 2) + Fib(N - 1)
          end(4),
    Res.
