-module(dynamic_fun_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_id2(module()) -> fun().
m_id2(M) ->
    F = fun M:id/0,
    F.
