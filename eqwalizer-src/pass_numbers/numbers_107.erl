-module(numbers_107).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_82(pos_integer(),
              number() | non_neg_integer()) -> number().
test_82(U, N) -> U + N / (N + U).
