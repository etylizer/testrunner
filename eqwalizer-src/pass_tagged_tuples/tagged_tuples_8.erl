-module(tagged_tuples_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type deep_tagged_tuple() :: {{id, atom()},
                              {age, number()}} |
                             {{borough, string()}, {city, string()}}.
-spec get_city(deep_tagged_tuple()) -> string().
get_city({{borough, _}, {_, C}}) -> C.
