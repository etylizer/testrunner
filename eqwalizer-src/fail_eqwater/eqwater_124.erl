-module(eqwater_124).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ57_neg([atom()] | atom(), atom()) -> [atom()].
occ57_neg(V, _) ->
    case V of
        [_] -> V;
        A -> [A]
    end.
