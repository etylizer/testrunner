-module(eqwater_116).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ49(integer() | undefined,
            integer() | undefined) -> {integer(), integer()}.
occ49(A1, A2) ->
    case {A1, A2} of
        {undefined, undefined} -> {0, 0};
        {undefined, _} -> {0, A2};
        {_, undefined} -> {A1, 0};
        _ -> {A1, A2}
    end.
