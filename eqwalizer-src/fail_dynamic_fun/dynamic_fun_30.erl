-module(dynamic_fun_30).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type f4(T) :: fun((...) -> T).
-spec f4_id_T(f4(T)) -> f4(T).
f4_id_T(F) -> F.
-spec apply_f4_id(f4(a)) -> f4(a | b).
apply_f4_id(F) -> f4_id_T(F).
