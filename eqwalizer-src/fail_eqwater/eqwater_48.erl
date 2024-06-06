-module(eqwater_48).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type rich_tuple() :: {atom(), integer()} |
                      {integer(), atom()}.
-spec get_int7_neg(rich_tuple()) -> number().
get_int7_neg({A, A}) when is_atom(A) -> 0;
get_int7_neg({_, I}) -> I.
