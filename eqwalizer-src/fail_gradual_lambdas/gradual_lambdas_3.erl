-module(gradual_lambdas_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec n_lambda_3_neg(atom()) -> number().
n_lambda_3_neg(A) ->
    DoWork = fun Loop(N) ->
                     case N >= 10 of
                         true -> A + 1;
                         false -> Loop(N + 1)
                     end
             end,
    DoWork(1).
