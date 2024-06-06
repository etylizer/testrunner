-module(as_pat_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(box_a, {a :: atom()}).
-spec box_a(atom()) -> #box_a{}.
box_a(A) -> #box_a{a = A}.
