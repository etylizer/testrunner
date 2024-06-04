-module(number_comparisons_14).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_9(term()) -> non_neg_integer().
test_9(X) when is_integer(X), X > -1 -> X.
