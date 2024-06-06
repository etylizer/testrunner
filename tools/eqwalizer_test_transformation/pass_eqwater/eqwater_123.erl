-module(eqwater_123).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ56([atom()] | atom(), atom()) -> [atom()].
occ56(V, A) ->
    case V of
        [_] -> V;
        _ -> [A]
    end.
