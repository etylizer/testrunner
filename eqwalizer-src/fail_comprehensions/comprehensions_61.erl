-module(comprehensions_61).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test51_neg([fun(() -> atom()) |
                  fun((number()) -> atom())]) -> [atom()].
test51_neg(Fs) ->
    Res = [F() || F <- Fs, is_function(F)],
    Res.
