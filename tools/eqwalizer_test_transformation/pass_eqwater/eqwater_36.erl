-module(eqwater_36).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(ab_rec, {ab :: atom() | binary()}).
-spec occ12(#ab_rec{} | atom()) -> atom().
occ12(#ab_rec{ab = A}) ->
    if is_atom(A) -> A;
       true -> undefined
    end;
occ12(A) -> A.
