-module(type_predicates_20).
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
-spec any_mk(term(), term()) -> map().
any_mk(M, K) when is_map_key(K, M) -> M;
any_mk(_, _) -> #{}.
