-module(map_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-opaque map_(K, V) :: map_ffi:map_(K, V).
-export_type([map_/2]).
-spec get(K, map_(K, V)) -> maybe:maybe(V).
get(Key, Map) -> map_ffi:get(Key, Map).
-spec member(K, map_(K, _V)) -> boolean().
member(Key, Map) ->
    case get(Key, Map) of
        {'$#maybe:maybe.just', _} -> true;
        {'$#maybe:maybe.nothing'} -> false
    end.
