-module(deep_tuples_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test3_neg({{ok, number()},
                 {ok, number()}}) -> none().
test3_neg({{Tag1, _}, {_, _}}) -> Tag1.
