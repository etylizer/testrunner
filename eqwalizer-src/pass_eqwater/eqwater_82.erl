-module(eqwater_82).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-record(response,
        {id1 :: undefined | number(),
         id2 :: undefined | number(),
         id3 :: undefined | number(),
         id4 :: undefined | number(),
         id5 :: undefined | number(),
         id6 :: undefined | number(),
         id7 :: undefined | number()}).
-spec extract_id1(#response{}) -> number().
extract_id1(#response{id1 = Id1, id2 = Id2}) ->
    if Id1 =/= undefined -> Id1;
       Id2 =/= undefined -> Id2;
       true -> erlang:error(no_id)
    end.
