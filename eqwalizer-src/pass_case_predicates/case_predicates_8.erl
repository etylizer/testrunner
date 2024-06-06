-module(case_predicates_8).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec a_zero2a(atom() | fun((atom()) -> atom()),
               atom()) -> atom().
a_zero2a(AF, A) ->
    Res = case is_function(AF) of
              false -> A;
              _ -> AF(A)
          end,
    Res.
