-module(custom_76).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_filtermap_8_neg() -> nok.
lists_filtermap_8_neg() ->
    lists:filtermap(fun (1) -> {true, a};
                        (X) ->
                            Res = case X of
                                      true -> {true, a};
                                      false -> wrong_ret
                                  end,
                            Res
                    end,
                    [1, 2, 3]),
    nok.
