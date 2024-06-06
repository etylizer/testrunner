-module(any_fun_type_27).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_f3_neg(fun((...) -> atom()),
                 [term()]) -> [atom()].
map_f3_neg(F, Ts) -> lists:map(F, Ts).
