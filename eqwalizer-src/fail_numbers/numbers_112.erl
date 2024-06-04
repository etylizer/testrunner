-module(numbers_112).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_87_wip_neg(a | b,
                      c | d) -> non_neg_integer().
test_87_wip_neg(U1, U2) -> U1 div U2 / (U2 bsl U1).
