-module(dynamic_fun_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_fun7_neg(module(), atom(),
                 pid()) -> fun((pid()) -> pid()).
m_fun7_neg(M, F, A) -> fun M:F/A.
