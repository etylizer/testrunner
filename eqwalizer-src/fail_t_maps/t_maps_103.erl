-module(t_maps_103).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec extra_2_neg(#{a => va, b => vb, c => vc, d => vd,
                    e => ve}) -> #{a => ka, b => kb, c => kc}.
extra_2_neg(X) -> X.
