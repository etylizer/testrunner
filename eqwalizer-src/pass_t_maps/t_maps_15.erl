-module(t_maps_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec dict_update1(#{atom() => true}) -> #{atom() =>
                                               boolean()}.
dict_update1(D) -> D#{foo => false}.
