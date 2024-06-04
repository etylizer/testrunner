-module(type_predicates_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: atom()}).
-record(rec2, {id :: atom()}).
-record(f0, {f :: fun(() -> term())}).
-record(f1, {f :: fun((term()) -> term())}).
-record(f2, {f :: fun((term(), term()) -> term())}).
-type fs() :: #f0{} | #f1{} | #f2{}.
-spec unit_fun() -> {}.
unit_fun() -> {}.
-spec any_fun_x(term()) -> fun().
any_fun_x(F) when is_function(F, 2) -> F;
any_fun_x(F) when is_function(F, 3) -> F;
any_fun_x(_) -> fun unit_fun/0.
