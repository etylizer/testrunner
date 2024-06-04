-module(parametricity_18).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec search(Pred, List) -> {value, Value} |
                            false when Pred :: fun((T) -> boolean()),
                                       List :: [T], Value :: T.
search(Pred, [Hd | Tail]) ->
    case Pred(Hd) of
        true -> {value, Hd};
        false -> search(Pred, Tail)
    end;
search(_Pred, []) -> false.
