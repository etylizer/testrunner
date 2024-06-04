-module(gradual_lambdas_4).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec n_lambda_4_neg() -> number().
n_lambda_4_neg() ->
    DoWork = fun Loop(N) ->
                     case N >= 10 of
                         true -> done;
                         false -> Loop(N + 1)
                     end
             end,
    DoWork().
