-module(eqwater_34).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(rec,
        {id1 :: undefined | integer(),
         id2 :: undefined | integer()}).
-spec collect_ids(#rec{}) -> [integer()].
collect_ids(Rec) ->
    Ids0 = [],
    Ids1 = case Id1 = Rec#rec.id1 of
               undefined -> Ids0;
               _ -> [Id1 | Ids0]
           end,
    Ids2 = case Id2 = Rec#rec.id1 of
               undefined -> Ids0;
               _ -> [Id2 | Ids1]
           end,
    Ids2.
