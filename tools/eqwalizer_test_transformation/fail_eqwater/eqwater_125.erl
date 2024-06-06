-module(eqwater_125).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ58_neg([atom()] | atom(), atom()) -> [atom()].
occ58_neg(V, A) ->
    case V of
        [_] -> V;
        [] -> V;
        A2 -> [A2]
    end.
