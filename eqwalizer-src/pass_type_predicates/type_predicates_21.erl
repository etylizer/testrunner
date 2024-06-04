-module(type_predicates_21).
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
-spec as_fs(term()) -> fs().
as_fs(F) when is_function(F, 0) -> #f0{f = F};
as_fs(F) when is_function(F, 1) -> #f1{f = F};
as_fs(F) when is_function(F, 2) -> #f2{f = F}.
