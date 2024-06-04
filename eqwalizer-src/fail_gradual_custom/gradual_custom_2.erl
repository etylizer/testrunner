-module(gradual_custom_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec app_env1_gradual_neg() -> number().
app_env1_gradual_neg() -> application:get_env(app1).
