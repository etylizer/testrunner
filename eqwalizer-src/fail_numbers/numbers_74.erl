-module(numbers_74).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_50b_neg(term()) -> nok.
test_50b_neg(X) ->
    _ = +X,
    nok.
