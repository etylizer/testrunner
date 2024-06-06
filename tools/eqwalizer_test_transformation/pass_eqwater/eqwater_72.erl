-module(eqwater_72).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ25(fun(() -> atom()) | atom()) -> atom().
occ25(A) when is_atom(A) -> A;
occ25(F) -> F().
