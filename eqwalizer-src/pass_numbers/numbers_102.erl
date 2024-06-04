-module(numbers_102).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_72(non_neg_integer() | pos_integer(),
              non_neg_integer() | pos_integer()) -> non_neg_integer().
test_72(N1, N2) -> N1 div N2.
