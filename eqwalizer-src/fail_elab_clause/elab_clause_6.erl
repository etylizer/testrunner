-module(elab_clause_6).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec bar(term()) -> {atom(), atom()} | {number()}.
bar(true) -> {any, any};
bar(_) -> {0}.
-spec app_bar_neg(term()) -> {atom()} | number().
app_bar_neg(X) ->
    Res = case bar(X) of
              {Y, _} -> Y;
              {N} -> {N}
          end,
    Res.
