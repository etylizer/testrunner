-module(dynamic_calls_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {method :: fun((atom()) -> pid())}).
-spec test_05_pos(#rec{}) -> pid().
test_05_pos(Rec) ->
    Meth = Rec#rec.method,
    Res = Meth(atom),
    Res.
