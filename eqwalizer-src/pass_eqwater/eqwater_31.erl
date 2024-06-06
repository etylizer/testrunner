-module(eqwater_31).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lambda_call(X :: atom() | binary()) -> binary().
lambda_call(X) ->
    fun (A) when is_atom(A) -> atom_to_binary(A);
        (B) -> B
    end(X).
