-module(pinned_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec pin4([number()], number()) -> atom().
pin4(List, Val) ->
    case List of
        [Head | Tail] ->
            case Val of
                Head -> head;
                Tail -> tail
            end
    end.
