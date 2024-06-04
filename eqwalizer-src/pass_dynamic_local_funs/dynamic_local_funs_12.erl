-module(dynamic_local_funs_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec fun3b(boolean(), X) -> X.
fun3b(B, X) ->
    fun F(Y) ->
            case B of
                true -> Y;
                false -> F(Y)
            end
    end(X).
