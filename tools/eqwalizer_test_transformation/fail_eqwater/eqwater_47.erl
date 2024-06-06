-module(eqwater_47).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type rich_tuple() :: {atom(), integer()} |
                      {integer(), atom()}.
-spec get_int6(rich_tuple()) -> number().
get_int6({A1, A2}) when is_atom(A1) and is_atom(A2) ->
    1;
get_int6({_, I}) -> I.
