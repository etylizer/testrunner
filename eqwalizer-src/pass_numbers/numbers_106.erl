-module(numbers_106).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_81(pos_integer(),
              pos_integer() | non_neg_integer()) -> non_neg_integer().
test_81(U, N) -> U div N div (N + U).
