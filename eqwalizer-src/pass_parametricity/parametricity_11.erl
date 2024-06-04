-module(parametricity_11).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec all(Pred, List) -> boolean() when Pred ::
                                            fun((T) -> boolean()),
                                        List :: [T].
all(Pred, [Hd | Tail]) ->
    case Pred(Hd) of
        true -> all(Pred, Tail);
        false -> false
    end;
all(Pred, []) when is_function(Pred, 1) -> true.
