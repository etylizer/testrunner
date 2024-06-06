-module(list_17).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec member(A, [A]) -> boolean().
any(Pred, [H | T]) ->
    case Pred(H) of
        true -> true;
        false -> any(Pred, T)
    end;
any(_Pred, []) -> false.
-spec any(fun((A) -> boolean()), [A]) -> boolean().
member(X, Xs) -> any(basics:eq(X), Xs).
