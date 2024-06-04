-module(map_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-opaque map_(K, V) :: map_ffi:map_(K, V).
-export_type([map_/2]).
-spec empty() -> map_(_K, _V).
empty() -> map_ffi:empty().
