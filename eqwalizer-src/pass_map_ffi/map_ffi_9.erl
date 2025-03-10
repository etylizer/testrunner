-module(map_ffi_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type map_(K, V) :: #{K => V}.
-spec map(fun((K, A) -> B), map_(K, A)) -> map_(K, B).
map(F, Map) -> maps:map(F, Map).
