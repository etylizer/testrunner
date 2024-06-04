-module(type_predicates_13).
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
-spec id_any(term()) -> term().
id_any(X) -> X.
-spec fun_slice(fun((term()) -> term()) |
                atom()) -> fun((term()) -> term()).
fun_slice(F) when is_function(F) -> F;
fun_slice(_) -> fun id_any/1.
