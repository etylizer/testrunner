-module(basics_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec idiv(integer(), integer()) -> integer().
idiv(X1, X2) -> X1 div X2.
-spec idiv(integer()) -> fun((integer()) -> integer()).
idiv(X1) -> fun (X2) -> idiv(X1, X2) end.
