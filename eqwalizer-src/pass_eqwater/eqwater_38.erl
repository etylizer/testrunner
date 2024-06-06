-module(eqwater_38).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(a_rec, {a :: atom()}).
-spec occ14(#a_rec{} | atom()) -> atom().
occ14(#a_rec{a = Z}) -> Z;
occ14(A) -> A.
