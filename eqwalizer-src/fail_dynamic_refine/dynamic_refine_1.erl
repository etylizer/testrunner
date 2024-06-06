-module(dynamic_refine_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec refine_any1_neg(any()) -> ok.
refine_any1_neg(Arg) -> if is_list(Arg) -> {Arg} end.
