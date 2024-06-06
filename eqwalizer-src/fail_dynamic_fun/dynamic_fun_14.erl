-module(dynamic_fun_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec m_fun3_neg(module(),
                 atom()) -> fun((pid()) -> pid()).
m_fun3_neg(M, F) -> fun M:F/2.
