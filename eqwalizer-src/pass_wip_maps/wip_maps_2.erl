-module(wip_maps_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec bad_mixed_update1(#{a := term()}) -> #{a := a,
                                             b := b}.
bad_mixed_update1(M) -> M#{a := a, b => b}.
