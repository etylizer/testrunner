-module(eqwater_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ06(atom() | integer() | binary()) -> binary().
occ06(Arg) ->
    case Arg of
        A when not is_binary(A) -> <<>>;
        B -> B
    end.
