-module(parametricity_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec takewhile(Pred, L1) -> L2 when Pred ::
                                         fun((T) -> boolean()),
                                     L1 :: [T], L2 :: [T].
takewhile(Pred, [H | T]) ->
    case Pred(H) of
        true -> [H | takewhile(Pred, T)];
        false -> []
    end;
takewhile(_Pred, []) -> [].
