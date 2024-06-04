-module(numbers_98).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_68(pos_integer(),
              neg_integer()) -> neg_integer().
test_68(N1, N2) -> N1 * N2.
