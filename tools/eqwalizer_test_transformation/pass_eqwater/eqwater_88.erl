-module(eqwater_88).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ_orelse(atom() |
                 integer() |
                 binary()) -> binary().
occ_orelse(Arg) ->
    case Arg of
        A when is_atom(A) orelse is_integer(A) -> <<>>;
        B -> B
    end.
