-module(hints_1).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec reveal_type1(atom() | binary()) -> term().
reveal_type1(A) when is_atom(A) ->
    eqwalizer:reveal_type(A),
    A;
reveal_type1(B) -> B.
