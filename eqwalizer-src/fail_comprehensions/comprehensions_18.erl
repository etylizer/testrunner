-module(comprehensions_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test16_neg(term()) -> [term()].
test16_neg(L) ->
    Res = [X || X <- L],
    Res.
