-module(dyn_calls_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec dyn_call_check2(atom(), atom(), integer(),
                      atom()) -> integer().
dyn_call_check2(M, F, Arg1, Arg2) -> M:F(Arg1, Arg2).
