-module(eqwater_113).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ46({binary() | atom(), atom()}) -> {atom(),
                                             atom()}.
occ46(Tuple) ->
    case Tuple of
        {B, A} when is_binary(B) -> {undefined, A};
        {A1, A2} -> {A1, A2}
    end.
