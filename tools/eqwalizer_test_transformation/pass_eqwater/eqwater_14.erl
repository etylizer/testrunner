-module(eqwater_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ05_1_if(atom() |
                 integer() |
                 binary()) -> binary().
occ05_1_if(A) ->
    if is_atom(A) or is_integer(A) -> <<>>;
       true -> A
    end.
