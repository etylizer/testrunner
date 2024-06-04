-module(as_pat_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_a, {a :: atom()}).
-record(box_b, {b :: binary()}).
-record(box_n, {n :: number()}).
-type abn() :: atom() | binary() | number().
-type box() :: #box_a{} | #box_b{} | #box_n{}.
-spec unbox(box()) -> abn().
unbox(#box_a{a = A}) -> A;
unbox(#box_b{b = B}) -> B;
unbox(#box_n{n = N}) -> N.
