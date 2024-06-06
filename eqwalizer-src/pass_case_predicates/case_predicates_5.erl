-module(case_predicates_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec a_zero1(atom() | fun((atom()) -> atom()),
              atom()) -> atom().
a_zero1(AF, A) ->
    case is_function(AF) of
        true -> AF(A);
        false -> A
    end.
