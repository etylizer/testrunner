-module(basics_41).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec composeL(fun((B) -> C),
               fun((A) -> B)) -> fun((A) -> C).
composeL(G, F) -> fun (X) -> G(F(X)) end.
