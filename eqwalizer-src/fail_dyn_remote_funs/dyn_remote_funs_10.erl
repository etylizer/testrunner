-module(dyn_remote_funs_10).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec test_09(atom(), atom(),
              number()) -> fun((none()) -> term()).
test_09(M, F, N) ->
    Res = fun M:F/N,
    case true of
        true when is_function(Res, 2) -> Res;
        false -> throw(err)
    end.
