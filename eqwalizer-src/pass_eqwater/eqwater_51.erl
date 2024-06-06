-module(eqwater_51).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(a, {id :: atom()}).
-record(b, {id :: atom()}).
-spec ab_b1(#a{} | #b{}) -> #b{}.
ab_b1(A) when is_record(A, a) -> #b{id = A#a.id};
ab_b1(B) -> B.
