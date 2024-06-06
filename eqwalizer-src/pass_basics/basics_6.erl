-module(basics_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec mul(integer(), integer()) -> integer().
mul(X1, X2) -> X1 * X2.
-spec mul(integer()) -> fun((integer()) -> integer()).
mul(X1) -> fun (X2) -> mul(X1, X2) end.
