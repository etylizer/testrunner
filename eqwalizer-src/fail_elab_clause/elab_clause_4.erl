-module(elab_clause_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo(term()) -> {atom(), atom()}.
foo(_) -> {any, any}.
-spec app_foo_neg(term()) -> binary().
app_foo_neg(X) ->
    Res = case foo(X) of {_, Y} -> Y end,
    Res.
