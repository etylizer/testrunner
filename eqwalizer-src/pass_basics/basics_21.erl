-module(basics_21).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lt(A, A) -> boolean().
lt(X1, X2) -> X1 < X2.
-spec min(A, A) -> A.
min(X1, X2) ->
    case lt(X1, X2) of
        true -> X1;
        false -> X2
    end.
