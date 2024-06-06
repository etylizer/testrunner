-module(custom_241).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-type mylist(A, B) :: [A | [A | B]].
-spec flatten2_strict3(mylist(X, Y)) -> [X |
                                         Y |
                                         number()].
flatten2_strict3(L) -> lists:flatten(L, [1, 2, 3]).
