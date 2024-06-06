-module(custom_75).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_7() -> nok.
lists_filtermap_7() ->
    lists:filtermap(fun (1) -> {true, a};
                        (X) ->
                            case X of
                                true -> {true, a};
                                false -> false
                            end
                    end,
                    [1, 2, 3]),
    nok.
