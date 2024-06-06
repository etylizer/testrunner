-module(as_pat_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_a, {a :: atom()}).
-spec unbox_a(#box_a{}) -> atom().
unbox_a(#box_a{a = A}) -> A.
