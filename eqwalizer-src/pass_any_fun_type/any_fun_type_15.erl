-module(any_fun_type_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f4(T) :: fun((...) -> T).
-type f5(T) :: fun((term()) -> T).
-spec f5_to_f4_cov(f5(a)) -> f4(a | b).
f5_to_f4_cov(F) -> F.
