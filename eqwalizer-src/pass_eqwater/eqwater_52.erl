-module(eqwater_52).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(union_field, {field :: atom() | binary()}).
-spec record_occ01(#union_field{}) -> binary().
record_occ01(#union_field{field = B})
    when is_binary(B) ->
    B;
record_occ01(#union_field{field = A}) ->
    atom_to_binary(A).
