-module(t_maps_36).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec shape@dict3_neg(#{a := a()}, n(), a()) -> #{n() =>
                                                      a()}.
shape@dict3_neg(S, K, V) -> S#{K => V}.
