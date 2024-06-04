-module(dyn_remote_funs_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_08(atom(), atom(),
              number()) -> fun((none()) -> term()).
test_08(M, F, N) ->
    Res = fun M:F/N,
    Res.
