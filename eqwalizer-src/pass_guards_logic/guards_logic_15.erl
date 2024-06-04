-module(guards_logic_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test15(term(), term()) -> {number(), number()} |
                                {boolean(), boolean()}.
test15(X, Y) when X + Y > 0 -> {X, Y};
test15(X, Y) when X, Y -> {X, Y}.
