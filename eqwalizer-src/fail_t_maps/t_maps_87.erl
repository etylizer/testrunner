-module(t_maps_87).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec sub_3_neg(#{a := atom()}) -> #{a => atom(),
                                     n := number()}.
sub_3_neg(M) -> M.
