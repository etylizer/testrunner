-module(hints_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec reveal_type3(atom() |
                   binary() |
                   tuple()) -> term().
reveal_type3(A) when is_atom(A) -> A;
reveal_type3(BT) ->
    eqwalizer:reveal_type(BT),
    BT.
