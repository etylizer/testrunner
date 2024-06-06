-module(dynamic_fun_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filter_any(fun(), list()) -> list().
filter_any(F, L) -> lists:filter(F, L).
