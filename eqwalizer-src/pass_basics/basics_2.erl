-module(basics_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec add(integer(), integer()) -> integer().
add(X1, X2) -> X1 + X2.
-spec add(integer()) -> fun((integer()) -> integer()).
add(X1) -> fun (X2) -> add(X1, X2) end.
