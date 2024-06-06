-module(custom_126).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec 'test_plists_get_value/2_3'() -> default.
'test_plists_get_value/2_3'() ->
    proplists:get_value(k, []).
