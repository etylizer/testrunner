-module(pinned_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec pin([number()]) -> boolean().
pin(L) ->
    X = 1,
    case L of
        X -> true;
        [X | _] -> false;
        _ -> false
    end.
