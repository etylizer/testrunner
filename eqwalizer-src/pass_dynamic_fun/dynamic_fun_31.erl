-module(dynamic_fun_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f4(T) :: fun((...) -> T).
-spec fun_to_f4(fun()) -> f4(atom()).
fun_to_f4(F) -> F.
