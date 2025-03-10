-module(eqwater_43).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type rich_tuple() :: {atom(), integer()} |
                      {integer(), atom()}.
-spec get_int2(rich_tuple()) -> integer().
get_int2({I1, _}) when is_integer(I1) -> I1;
get_int2({_, I2}) -> I2.
