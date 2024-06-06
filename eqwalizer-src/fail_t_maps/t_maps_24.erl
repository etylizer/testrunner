-module(t_maps_24).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-spec meet_shape2_neg(#{a := a()}, #{a := b()}) -> #{a
                                                         := n()}.
meet_shape2_neg(S, S) -> S.
