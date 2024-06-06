-module(any_fun_type_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f1() :: fun((term()) -> term()).
-spec f1_to_f_any_pos(f1()) -> fun().
f1_to_f_any_pos(F) -> F.
