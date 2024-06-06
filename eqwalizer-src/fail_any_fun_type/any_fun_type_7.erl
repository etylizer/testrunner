-module(any_fun_type_7).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec f_any_to_f0_neg(fun()) -> f0.
f_any_to_f0_neg(F) -> F.
