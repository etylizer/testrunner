-module(dynamic_calls_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_04_neg(#rec{}) -> number().
test_04_neg(Rec) -> (Rec#rec.method)(atom).
