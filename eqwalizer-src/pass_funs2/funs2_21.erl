-module(funs2_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec repeated_vars2() -> number().
repeated_vars2() ->
    fun (X, X) -> X end(2, 2),
    3.
