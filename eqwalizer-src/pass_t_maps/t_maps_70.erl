-module(t_maps_70).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec val3(#{a1 := a()} | #{b1 := n()}) -> none().
val3(#{a := V}) -> V.
