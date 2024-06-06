-module(eqwater_59).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(union_field, {field :: atom() | binary()}).
-spec record_occ07_tuple({union_field,
                          atom()}) -> binary().
record_occ07_tuple({_, A}) -> atom_to_binary(A).
-spec record_occ08_neg(#union_field{}) -> atom() |
                                          binary().
record_occ08_neg(#union_field{field = A})
    when is_atom(A) ->
    A;
record_occ08_neg(R) -> record_occ07_tuple(R).
