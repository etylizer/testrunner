-module(case_predicates_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type child() :: undefined | pid().
-spec a_zero3a(atom() | fun((atom()) -> atom()),
               atom()) -> atom().
a_zero3a(AF, A) ->
    Res = case is_function(AF, 1) of
              true -> AF(A);
              false -> A
          end,
    Res.
