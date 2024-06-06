-module(eqwater_records_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: integer(), name :: string()}).
-record(rec2, {name :: string(), id :: integer()}).
-spec normalize_neg1({#rec1{}, #rec2{}} |
                     {#rec2{}, #rec1{}}) -> {#rec1{}, #rec2{}}.
normalize_neg1({R = #rec2{}, R}) -> {R, R};
normalize_neg1(Pair) -> Pair.
