-module(dynamic_fun_38).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec map_f3(fun((...) -> atom()),
             [term()]) -> [atom()].
map_f3(F, Ts) -> lists:map(F, Ts).
