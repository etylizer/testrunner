-module(t_maps_54).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec f_shape2_neg(#{a => a(), n => n()}) -> {n(), a()}.
f_shape2_neg(#{a := A, n := N}) -> {A, N}.
