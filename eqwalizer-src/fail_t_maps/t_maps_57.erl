-module(t_maps_57).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec to_map3_neg(#{V => K} | {K, V}) -> #{K => V}.
to_map3_neg(#{} = M) -> M;
to_map3_neg({K, V}) -> #{K => V}.
