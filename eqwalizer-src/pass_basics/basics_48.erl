-module(basics_48).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec apL(fun((A) -> B), A) -> B.
apL(F, X) -> F(X).
-spec apL(fun((A) -> B)) -> fun((A) -> B).
apL(F) -> fun (X) -> apL(F, X) end.
