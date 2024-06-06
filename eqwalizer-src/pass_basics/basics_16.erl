-module(basics_16).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec gt(A, A) -> boolean().
gt(X1, X2) -> X1 > X2.
-spec gt(A) -> fun((A) -> boolean()).
gt(X1) -> fun (X2) -> gt(X1, X2) end.
