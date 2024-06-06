-module(funs_uncommon_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_01(number()) -> number().
test_01(N) ->
    F = case N of
            0 -> fun (_) -> 1 end;
            _ -> fun (X) -> X + 1 end
        end,
    F(1).
