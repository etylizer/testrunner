-module(guards_logic_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test09_neg(term()) -> number() | atom().
test09_neg(X) when is_number(X) or is_atom(X) -> X.
