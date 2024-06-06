-module(custom_271).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec custom_overloaded(term()) -> term().
custom_overloaded(A) when is_atom(A) ->
    atom_to_binary(A);
custom_overloaded(B) when is_binary(B) ->
    binary_to_atom(B).
-spec use_custom_overloaded2(binary()) -> atom().
use_custom_overloaded2(B) -> custom_overloaded(B).
