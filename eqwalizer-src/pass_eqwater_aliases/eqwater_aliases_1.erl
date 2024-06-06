-module(eqwater_aliases_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type occ01_in() :: a | b.
-type occ01_out() :: b.
-spec occ01(occ01_in()) -> occ01_out().
occ01(Arg) ->
    case Arg of
        a -> b;
        B -> B
    end.
