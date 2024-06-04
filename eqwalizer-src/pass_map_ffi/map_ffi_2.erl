-module(map_ffi_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type map_(K, V) :: #{K => V}.
-export_type([map_/2]).
-spec get(K, map_(K, V)) -> maybe:maybe(V).
get(Key, Map) ->
    case maps:find(Key, Map) of
        {ok, Value} -> {'$#maybe:maybe.just', Value};
        error -> {'$#maybe:maybe.nothing'}
    end.
