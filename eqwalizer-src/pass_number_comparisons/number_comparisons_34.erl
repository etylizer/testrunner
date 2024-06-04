-module(number_comparisons_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_24(pos_integer(),
              pos_integer()) -> non_neg_integer().
test_24(X, Y) -> X rem Y.
