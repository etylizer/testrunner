-module(custom_128).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec 'test_plists_get_value/3_2_neg'() -> term().
'test_plists_get_value/3_2_neg'() ->
    proplists:get_value(k, b, my_default).
