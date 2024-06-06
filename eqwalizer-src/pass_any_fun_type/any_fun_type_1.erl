-module(any_fun_type_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f0() :: fun(() -> term()).
-spec f0_to_f_any_pos(f0()) -> fun().
f0_to_f_any_pos(F) -> F.
