-module(t_maps_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec dict_map_02_neg() -> #{integer() => atom()}.
dict_map_02_neg() -> #{0 => 1, 1 => 2}.
