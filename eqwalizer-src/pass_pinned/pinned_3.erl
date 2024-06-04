-module(pinned_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec pin2([number()], number(),
           [number()]) -> boolean().
pin2(List, Head, Tail) ->
    case List of
        [Head | Tail] -> true;
        _ -> false
    end.
