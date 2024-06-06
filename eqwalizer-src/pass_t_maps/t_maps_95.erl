-module(t_maps_95).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type gen_shape(T) :: #{item := T | gen_shape(T)}.
-spec gen_shape_1(#{item := a}) -> gen_shape(a | b).
gen_shape_1(X) -> X.
