-module(t_maps_51).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type n() :: number().
-type a() :: atom().
-spec get_kv(term(), #{a() => n()}) -> {a(), n()}.
get_kv(K, M) ->
    case M of
        #{K := V} -> {K, V};
        _ -> {not_found, 0}
    end.
