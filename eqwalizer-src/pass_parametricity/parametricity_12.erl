-module(parametricity_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec any(Pred, List) -> boolean() when Pred ::
                                            fun((T) -> boolean()),
                                        List :: [T], T :: term().
any(Pred, [Hd | Tail]) ->
    case Pred(Hd) of
        true -> true;
        false -> any(Pred, Tail)
    end;
any(Pred, []) when is_function(Pred, 1) -> false.
