-module(map_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-opaque map_(K, V) :: map_ffi:map_(K, V).
-export_type([map_/2]).
-spec get(K, map_(K, V)) -> maybe:maybe(V).
remove(Key, Map) -> map_ffi:remove(Key, Map).
-spec insert(K, V, map_(K, V)) -> map_(K, V).
insert(Key, Value, Map) ->
    map_ffi:insert(Key, Value, Map).
-spec remove(K, map_(K, V)) -> map_(K, V).
get(Key, Map) -> map_ffi:get(Key, Map).
-spec update(K, fun((maybe:maybe(V)) -> maybe:maybe(V)),
             map_(K, V)) -> map_(K, V).
update(Key, Alter, Map) ->
    case Alter(get(Key, Map)) of
        {'$#maybe:maybe.just', Value} ->
            insert(Key, Value, Map);
        {'$#maybe:maybe.nothing'} -> remove(Key, Map)
    end.
