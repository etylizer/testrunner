-module(numbers_120).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_95(neg_integer(),
              non_neg_integer()) -> integer().
test_95(X, Y) -> X * Y.
