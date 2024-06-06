-module(t_maps_68).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec val1(#{a := a()} | #{a := n()}) -> a() | n().
val1(#{a := V}) -> V.
