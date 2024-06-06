-module(subtype_pos_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec ty_var_sub_any_1(T, T) -> term().
ty_var_sub_any_1(T, T) -> T.
