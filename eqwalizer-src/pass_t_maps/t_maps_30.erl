-module(t_maps_30).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-spec u_shape1(#{a := a()} |
               #{a := b(), b := b()}) -> #{a := n()} |
                                         #{a := n(), b := b()}.
u_shape1(S) -> S#{a := 1}.
