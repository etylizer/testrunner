-module(t_maps_19).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-spec shape_update3_neg(#{foo => b(),
                          bar => n()}) -> #{foo => b(), bar := b()}.
shape_update3_neg(S) -> S#{bar := true}.