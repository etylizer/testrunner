-module(custom_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec, {field :: number()}).
-spec keyfind_4() -> false | #rec{}.
keyfind_4() ->
    Res = lists:keyfind(a, #rec.field, [#rec{field = 4}]),
    Res.
