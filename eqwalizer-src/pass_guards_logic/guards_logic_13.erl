-module(guards_logic_13).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test13(term(), term()) -> {number(), number()}.
test13(X, Y) when X + 1 > 0, Y / 3 > 1 -> {X, Y}.
