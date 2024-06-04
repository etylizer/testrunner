-module(comprehensions_60).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1,
        {b :: undefined | binary(), s :: undefined | string()}).
-record(rec2,
        {b :: undefined | binary(), s :: undefined | string()}).
-spec test50([fun(() -> atom()) |
              fun((number()) -> atom())]) -> [atom()].
test50(Fs) ->
    Res = [F() || F <- Fs, is_function(F, 0)],
    Res.
