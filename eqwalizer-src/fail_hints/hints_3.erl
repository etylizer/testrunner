-module(hints_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec reveal_type2(atom() | binary()) -> term().
reveal_type2(A) when is_atom(A) -> A;
reveal_type2(B) ->
    eqwalizer:reveal_type(B),
    B.
