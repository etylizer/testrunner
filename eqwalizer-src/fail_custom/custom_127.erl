-module(custom_127).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec 'test_plists_get_value/3_2'() -> my_default.
'test_plists_get_value/3_2'() ->
    proplists:get_value(k, [], my_default).