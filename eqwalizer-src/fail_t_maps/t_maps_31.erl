-module(t_maps_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec u_shape2_neg(#{a := a()}) -> #{a := a(),
                                     b := a()}.
u_shape2_neg(S) -> S#{b := foo}.
