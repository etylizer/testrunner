-module(any_fun_type_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f0() :: fun(() -> term()).
-type f1() :: fun((term()) -> term()).
-type f2() :: fun((term(), term()) -> term()).
-type f3() :: fun((term(), term(), term()) -> term()).
-spec fs_to_f_any_pos(f0() |
                      f1() |
                      f2() |
                      f3()) -> fun().
fs_to_f_any_pos(F) -> F.
