-module(numbers_89).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_60b_neg(term()) -> nok.
test_60b_neg(X) ->
    _ = bnot X,
    nok.
