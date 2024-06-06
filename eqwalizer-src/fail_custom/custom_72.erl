-module(custom_72).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_4_neg() -> nok.
lists_filtermap_4_neg() ->
    lists:filtermap(fun (1) -> {true, a};
                        (2) -> true;
                        (3) -> wrong_ret
                    end,
                    [1, 2, 3]),
    nok.
