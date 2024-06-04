-module(elab_clause_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foo(term()) -> {atom(), atom()}.
foo(_) -> {any, any}.
-spec app_foo(term()) -> atom().
app_foo(X) ->
    Res = case foo(X) of {Y, _} -> Y end,
    Res.
