-module(eqwater_generics_2).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec lists_map2([atom() | string()]) -> [binary()].
lists_map2(L) ->
    lists:map(fun (A) when is_atom(A) -> atom_to_binary(A);
                  (S) -> list_to_binary(S)
              end,
              L).
