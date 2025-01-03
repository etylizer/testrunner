-module(basics_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lt(A, A) -> boolean().
lt(X1, X2) -> X1 < X2.
-spec lt(A) -> fun((A) -> boolean()).
lt(X1) -> fun (X2) -> lt(X1, X2) end.
