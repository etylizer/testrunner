-module(dynamic_fun_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_id4(module()) -> fun(() -> pid()).
m_id4(M) ->
    Res = fun M:id/0,
    Res.
