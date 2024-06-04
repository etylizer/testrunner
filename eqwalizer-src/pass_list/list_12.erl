-module(list_12).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec cons(A, [A]) -> [A].
cons(H, T) -> [H | T].
-spec maybe_cons(fun((A) -> maybe:maybe(B)), A,
                 [B]) -> [B].
maybe_cons(F, Mx, Xs) ->
    case F(Mx) of
        {'$#maybe:maybe.just', X} -> cons(X, Xs);
        {'$#maybe:maybe.nothing'} -> Xs
    end.
-spec maybe_cons(fun((A) -> maybe:maybe(B))) -> fun((A,
                                                     [B]) -> [B]).
maybe_cons(F) ->
    fun (Mx, Xs) -> maybe_cons(F, Mx, Xs) end.
