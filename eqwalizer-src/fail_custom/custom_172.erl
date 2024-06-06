-module(custom_172).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec app_env3_strict() -> number().
app_env3_strict() ->
    A = app1,
    K = key,
    U = undefined,
    application:get_env(A, K, U).
