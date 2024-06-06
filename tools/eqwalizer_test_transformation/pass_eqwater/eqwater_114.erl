-module(eqwater_114).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ47(binary() | atom(), atom()) -> {atom(),
                                           atom()}.
occ47(A1, A2) ->
    case {A1, A2} of
        {B, _} when is_binary(B) -> {undefined, A2};
        {A3, A4} -> {A3, A4}
    end.
