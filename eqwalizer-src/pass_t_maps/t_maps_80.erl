-module(t_maps_80).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec refine(#{a := term(), b => atom()},
             #{a => atom(), b := term()}) -> #{a := atom(),
                                               b := atom()}.
refine(S1, S1) -> S1.
