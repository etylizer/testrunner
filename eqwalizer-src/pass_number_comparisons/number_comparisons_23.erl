-module(number_comparisons_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_13_rev(non_neg_integer()) -> pos_integer().
test_13_rev(X) when 0 =/= X -> X.
