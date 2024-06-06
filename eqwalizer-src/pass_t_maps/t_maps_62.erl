-module(t_maps_62).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type a() :: atom().
-spec shape_atom_key(term(),
                     #{a := a(), b := b()}) -> {a(), a()}.
shape_atom_key(K, Shape) ->
    case Shape of
        #{K := V} -> {K, V};
        _ -> {undef, undef}
    end.
