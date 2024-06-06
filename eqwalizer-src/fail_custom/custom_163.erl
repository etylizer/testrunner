-module(custom_163).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_plists_to_map4() -> #{a | c | d =>
                                     b | true | pid()}.
test_plists_to_map4() ->
    proplists:to_map([{a, b}, c, {d, self()}]).
