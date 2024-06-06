-module(t_maps_108).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec misc_mismatch_1_neg(#{k_ok => term(),
                            k_wrong1 => pid(), k_wrong2 => pid(),
                            k_req1 => term(), k_req2 => term(),
                            k_extra => term()}) -> #{k_ok => term(),
                                                     k_wrong1 => atom(),
                                                     k_wrong2 => atom(),
                                                     k_req1 := atom(),
                                                     k_req2 := atom(),
                                                     k_req3 := atom()}.
misc_mismatch_1_neg(X) -> X.
