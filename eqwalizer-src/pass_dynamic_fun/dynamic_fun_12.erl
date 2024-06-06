-module(dynamic_fun_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_fun1(module(), atom()) -> fun(() -> pid()).
m_fun1(M, F) -> fun M:F/0.
