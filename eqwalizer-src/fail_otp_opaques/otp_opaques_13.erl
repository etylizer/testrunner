-module(otp_opaques_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test2() -> {term(), term()} | a.
test2() ->
    case rand:uniform(2) of
        1 -> gb_sets:new();
        2 -> a
    end.
