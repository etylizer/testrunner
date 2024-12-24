-module(custom_152).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_plists_is_defined3() -> boolean().
test_plists_is_defined3() ->
    proplists:is_defined(self(), [{a, b}]).