-module(gradual_lambdas_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec n_lambda_1() -> done.
n_lambda_1() ->
    DoWork = fun Loop(N) ->
                     case N >= 10 of
                         true -> done;
                         false -> Loop(N + 1)
                     end
             end,
    DoWork(1).
