-module(custom_74).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_6_neg() -> nok.
lists_filtermap_6_neg() ->
    lists:filtermap(fun (wrong_arity) -> {true, a} end,
                    [1, 2, 3]),
    nok.
