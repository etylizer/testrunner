-module(eqwater_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ03({a, atom()} | {b, binary()}) -> binary().
occ03(Arg) ->
    case Arg of
        {a, A} -> atom_to_binary(A);
        {_, B} -> B
    end.
