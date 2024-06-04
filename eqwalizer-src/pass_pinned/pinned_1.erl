-module(pinned_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec pin([number()], [number()]) -> boolean().
pin(L, N) ->
    X = 1,
    Z = 2,
    case N of
        _ -> true;
        Z -> false
    end,
    case L of
        [Y | _] -> true;
        [X] -> false;
        _ -> false
    end.
