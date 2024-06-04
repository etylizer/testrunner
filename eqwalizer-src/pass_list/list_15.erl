-module(list_15).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec all(fun((A) -> boolean()), [A]) -> boolean().
all(Pred, [H | T]) ->
    case Pred(H) of
        true -> all(Pred, T);
        false -> false
    end;
all(_Pred, []) -> true.
