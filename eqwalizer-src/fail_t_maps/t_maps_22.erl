-module(t_maps_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type b() :: boolean().
-type n() :: number().
-type a() :: atom().
-spec meet_dict2_neg(#{b() | n() => term()},
                     #{a() => term()}) -> #{n() => term()}.
meet_dict2_neg(D, D) -> D.
