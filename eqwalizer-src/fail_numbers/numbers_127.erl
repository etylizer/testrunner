-module(numbers_127).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_102_neg(integer()) -> {number(),
                                  integer(),
                                  integer(),
                                  number(),
                                  ok}.
test_102_neg(Int) -> {1, 0, -1, Int, error}.
