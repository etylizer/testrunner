-module(eqwater_39).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(a_rec, {a :: atom()}).
-record(ab_rec, {ab :: atom() | binary()}).
-spec occ15(#a_rec{} | atom(), #ab_rec{}) -> atom().
occ15(#a_rec{a = Z}, #ab_rec{}) -> Z;
occ15(A, _) -> A.
