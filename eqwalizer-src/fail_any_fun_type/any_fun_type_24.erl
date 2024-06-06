-module(any_fun_type_24).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f4(T) :: fun((...) -> T).
-spec f4_to_fun_neg(f4(a)) -> fun((term()) -> a | b).
f4_to_fun_neg(F) -> F.
