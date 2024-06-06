-module(t_maps_67).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec no_val(term(),
             a() | [{a(), term()}]) -> undefined.
no_val(K, Dict) ->
    case Dict of
        #{K := V} -> V;
        _ -> undefined
    end.
