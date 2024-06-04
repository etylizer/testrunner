-module(guards_logic_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test12(term(), term()) -> number().
test12(X, _) when X + 1 > 0 -> X;
test12(_, Y) when Y / 3 > 1 -> Y.
