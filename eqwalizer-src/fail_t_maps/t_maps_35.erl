-module(t_maps_35).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec shape@dict2_neg(#{a := a()}, n(), a()) -> #{a() =>
                                                      a()}.
shape@dict2_neg(S, K, V) -> S#{K => V}.
