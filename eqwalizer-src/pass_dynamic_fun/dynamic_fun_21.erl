-module(dynamic_fun_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(fun_wrap1, {inner_fun :: fun()}).
-record(fun_wrap2,
        {inner_fun :: fun((atom()) -> atom())}).
-type f4(T) :: fun((...) -> T).
-type f5(T) :: fun((term()) -> T).
-type f6(T) :: fun((term(), term()) -> T).
-spec take_fn_in_tup_1({fun((a) -> b)}) -> ok.
take_fn_in_tup_1({F}) ->
    _ = atom_to_list(F(a)),
    ok.
-spec lambda_2() -> ok.
lambda_2() ->
    take_fn_in_tup_1({fun Named(_X) -> b end}).
