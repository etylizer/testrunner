-module(map_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-opaque map_(K, V) :: map_ffi:map_(K, V).
-export_type([map_/2]).
-spec map(fun((K, A) -> B), map_(K, A)) -> map_(K, B).
map(F, Map) -> map_ffi:map(F, Map).
