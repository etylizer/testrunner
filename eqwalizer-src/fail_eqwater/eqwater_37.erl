-module(eqwater_37).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(a_rec, {a :: atom()}).
-record(ab_rec, {ab :: atom() | binary()}).
-spec occ13(#ab_rec{} | atom(), #a_rec{}) -> atom().
occ13(#ab_rec{ab = A}, #a_rec{a = A}) -> A;
occ13(A, _) -> A.
