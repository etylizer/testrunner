-module(basics_23).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec gt(A, A) -> boolean().
gt(X1, X2) -> X1 > X2.
-spec max(A, A) -> A.
max(X1, X2) ->
    case gt(X1, X2) of
        true -> X1;
        false -> X2
    end.
