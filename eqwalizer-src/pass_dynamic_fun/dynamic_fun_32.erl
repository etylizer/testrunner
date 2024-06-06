-module(dynamic_fun_32).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f4(T) :: fun((...) -> T).
-spec fun2_to_f4(fun((term()) -> a)) -> f4(a | b).
fun2_to_f4(F) -> F.
