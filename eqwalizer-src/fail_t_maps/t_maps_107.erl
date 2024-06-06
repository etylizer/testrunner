-module(t_maps_107).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec expected_required_got_opt_2_neg(#{a => ka,
                                        b => kb, c => kc}) -> #{a => ka,
                                                                b := kb,
                                                                c => kc}.
expected_required_got_opt_2_neg(X) -> X.
