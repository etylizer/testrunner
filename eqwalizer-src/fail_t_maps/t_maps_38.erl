-module(t_maps_38).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec shape@dict5_neg(Shape, n(),
                      a()) -> Dict when Shape :: #{a => a()},
                                        Dict :: #{n() => a()}.
shape@dict5_neg(S, K, V) -> S#{K => V}.
