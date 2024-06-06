-module(t_maps_71).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec val4({a(), a()}) -> none().
val4(#{a := V}) -> V.
