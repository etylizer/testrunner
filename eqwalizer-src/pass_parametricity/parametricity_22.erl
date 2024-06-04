-module(parametricity_22).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec uniquify(List1) -> List2 when List1 :: [Elem],
                                    List2 :: [Elem].
uniquify(List) ->
    {Set, Len} = lists:foldl(fun (E, {S, L}) ->
                                     {gb_sets:add(E, S), L + 1}
                             end,
                             {gb_sets:new(), 0},
                             List),
    case gb_sets:size(Set) of
        Len -> List;
        _ -> gb_sets:to_list(Set)
    end.
