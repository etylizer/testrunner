-module(eqwater_records_9).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec1, {id :: integer(), name :: string()}).
-spec get_rec1_id(#rec1{}) -> integer().
get_rec1_id(#rec1{id = Id}) -> Id.
-spec get_id_1(#rec1{} | integer()) -> integer().
get_id_1(Rec) when is_record(Rec, rec1) ->
    get_rec1_id(Rec);
get_id_1(Id) -> Id.
