-module(map_ffi_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type map_(K, V) :: #{K => V}.
-spec size(map_(_K, _V)) -> integer().
size(Map) -> maps:size(Map).
