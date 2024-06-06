-module(eqwater_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ06_if(atom() |
               integer() |
               binary()) -> binary().
occ06_if(A) ->
    if not is_binary(A) -> <<>>;
       true -> A
    end.
