-module(dynamic_calls_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_01_pos(fun((a) -> b), a) -> b.
test_01_pos(F, X) -> F(X).
