-module(eqwater_56).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(union_field, {field :: atom() | binary()}).
-spec record_occ06_neg(#union_field{}) -> binary().
record_occ06_neg(#union_field{field = B})
    when is_binary(B) ->
    B;
record_occ06_neg(R) ->
    atom_to_binary(R#union_field.field).
