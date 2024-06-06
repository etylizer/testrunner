-module(funs_47).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec
     getter3(fun((atom()) -> A)) -> fun((atom()) -> A) |
                                    fun((atom()) -> A).
getter3(F) -> fun (A) -> F(A) end.
