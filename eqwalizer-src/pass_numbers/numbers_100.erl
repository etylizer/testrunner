-module(numbers_100).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_70(integer(), neg_integer()) -> integer().
test_70(N1, N2) -> N1 * N2.
