-module(number_comparisons_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_4_rev(term()) -> pos_integer().
test_4_rev(X) when is_integer(X) andalso 1 =< X -> X.
