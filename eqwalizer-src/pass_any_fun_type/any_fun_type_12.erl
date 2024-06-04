-module(any_fun_type_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f0() :: fun(() -> term()).
-type f1() :: fun((term()) -> term()).
-type f2() :: fun((term(), term()) -> term()).
-type f3() :: fun((term(), term(), term()) -> term()).
-type f4(T) :: fun((...) -> T).
-type f5(T) :: fun((term()) -> T).
-type f6(T) :: fun((term(), term()) -> T).
-export_type([f0/0]).
-spec a_to_a(none()) -> a.
a_to_a(a) -> a.
-spec unsound() -> term().
unsound() ->
    F = fun a_to_a/1,
    if is_function(F, 1) -> F(3);
       true -> a
    end.
