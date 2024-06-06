-module(funs_54).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec getter10(fun((atom()) -> A)) -> a |
                                      fun((term(), term()) -> ok) |
                                      fun((atom()) -> A).
getter10(F) -> fun (A) -> F(A) end.
