-module(basics_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec eq(A, A) -> boolean().
eq(X1, X2) -> X1 == X2.
-spec eq(A) -> fun((A) -> boolean()).
eq(X1) -> fun (X2) -> eq(X1, X2) end.
