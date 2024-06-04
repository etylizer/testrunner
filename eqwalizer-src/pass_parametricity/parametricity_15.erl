-module(parametricity_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec filter(Pred, List1) -> List2 when Pred ::
                                            fun((T) -> boolean()),
                                        List1 :: [T], List2 :: [T].
filter(Pred, List) -> [E || E <- List, Pred(E)].
