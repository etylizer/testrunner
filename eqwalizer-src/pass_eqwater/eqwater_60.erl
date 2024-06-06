-module(eqwater_60).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(union_field4,
        {x :: integer() | ok, y :: integer() | err}).
-spec record_occ11(#union_field4{}) -> integer().
record_occ11(#union_field4{x = A, y = A}) -> A;
record_occ11(#union_field4{}) -> 0.
