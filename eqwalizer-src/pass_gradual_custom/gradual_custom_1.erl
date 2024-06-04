-module(gradual_custom_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec app_env1_gradual() -> number().
app_env1_gradual() ->
    Res = application:get_env(app1),
    case Res of
        undefined -> 0;
        {ok, N} -> N
    end.
