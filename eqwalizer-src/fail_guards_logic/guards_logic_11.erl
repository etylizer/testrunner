-module(guards_logic_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test11_neg(term()) -> number() | atom().
test11_neg(X)
    when is_number(X); is_atom(X); is_pid(X) ->
    X.
