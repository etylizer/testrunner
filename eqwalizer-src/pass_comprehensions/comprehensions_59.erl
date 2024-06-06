-module(comprehensions_59).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test49([fun(() -> atom()) |
              fun((number()) -> atom())]) -> [atom()].
test49(Fs) ->
    Res = [F(0) || F <- Fs, is_function(F, 1)],
    Res.
