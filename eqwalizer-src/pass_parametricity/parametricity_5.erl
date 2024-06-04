-module(parametricity_5).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec append(List1, List2) -> List3 when List1 :: [T],
                                         List2 :: [T], List3 :: [T].
append([], L2) -> L2;
append([H1 | T1], L2) -> [H1 | append(T1, L2)].
-spec append(ListOfLists) -> List1 when ListOfLists ::
                                            [List],
                                        List :: [T], List1 :: [T].
append([E]) -> E;
append([H | T]) -> append(H, append(T));
append([]) -> [].
