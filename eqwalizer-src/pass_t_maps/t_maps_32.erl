-module(t_maps_32).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec u_shape3(#{a := a()}) -> #{a := a(), b := a()}.
u_shape3(S) -> S#{b => foo}.
