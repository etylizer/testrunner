-module(custom_183).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filtermap_neg() -> [integer()].
filtermap_neg() ->
    lists:filtermap(fun (X) when X div 2 =:= 0 ->
                            {true, integer_to_list(X)};
                        (X) -> X < 10
                    end,
                    [1, 2, 3, 4]).
