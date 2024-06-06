-module(dynamic_fun_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_fun2(module(), atom()) -> fun(() -> pid()).
m_fun2(M, F) ->
    Res = fun M:F/0,
    Res.
