-module(t_maps_44).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type kv(K, V) :: #{K => V}.
-spec kvs_neg(kv(K1, V1), K2, V2) -> kv(K1 | K2,
                                        V1 | V2).
kvs_neg(Dict, K2, V2) -> Dict#{V2 => K2}.
