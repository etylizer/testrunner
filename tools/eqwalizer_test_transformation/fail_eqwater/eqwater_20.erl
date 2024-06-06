-module(eqwater_20).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec occ05_3_neg_if(atom() |
                     integer() |
                     binary()) -> binary().
occ05_3_neg_if(A) ->
    if is_atom(A); is_integer(A), A > 0 -> <<>>;
       true -> A
    end.
