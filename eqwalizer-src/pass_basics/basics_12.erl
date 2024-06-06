-module(basics_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec neq(A, A) -> boolean().
neq(X1, X2) -> X1 =/= X2.
-spec neq(A) -> fun((A) -> boolean()).
neq(X1) -> fun (X2) -> neq(X1, X2) end.
