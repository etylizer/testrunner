-module(t_maps_66).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type a() :: atom().
-spec no_key(term(),
             a() | [{a(), term()}]) -> undefined.
no_key(K, Dict) ->
    case Dict of
        #{K := _} -> K;
        _ -> undefined
    end.
