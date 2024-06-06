-module(t_maps_100).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type gen_shape(T) :: #{item := T | gen_shape(T)}.
-type gen_shape_expanded(T) :: #{item :=
                                     T | #{item := T | gen_shape_expanded(T)}}.
-spec
     gen_shape_6(gen_shape_expanded(a)) -> gen_shape(a | b).
gen_shape_6(X) -> X.
