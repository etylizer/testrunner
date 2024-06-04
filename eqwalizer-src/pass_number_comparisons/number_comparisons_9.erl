-module(number_comparisons_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_6_rev(term()) -> non_neg_integer().
test_6_rev(X) when is_integer(X), 0 =< X -> X.
