-module(gradual_overloaded_3).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec swap(atom()) -> binary();
          (binary()) -> atom().
swap(A) when is_atom(A) -> atom_to_binary(A);
swap(B) when is_binary(B) -> binary_to_atom(B).
-spec use_swap_specced(binary()) -> binary().
use_swap_specced(X) ->
    Y = swap(X),
    atom_to_binary(Y).
