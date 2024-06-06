-module(t_maps_63).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-spec shape_atom_key_neg(term(),
                         #{a := a(), b := b()}) -> {n(), a()}.
shape_atom_key_neg(K, Shape) ->
    case Shape of
        #{K := V} -> {K, V};
        _ -> {0, undef}
    end.
