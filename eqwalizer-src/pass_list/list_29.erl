-module(list_29).
%%% Copyright (c) Meta Platforms, Inc. and affiliates. All rights reserved.
%%% This source code is licensed under the Apache 2.0 license found in 
%%% the LICENSE file in the root directory of this source tree.
-compile([export_all, nowarn_export_all]).
-spec foldr(fun((A, B) -> B), B, [A]) -> B.
foldr(F, Acc, [H | T]) -> F(H, foldr(F, Acc, T));
foldr(_F, Acc, []) -> Acc.
-spec partition(fun((A) -> boolean()), [A]) -> {[A],
                                                [A]}.
partition(Pred, List) ->
    foldr(fun (X, {Trues, Falses}) ->
                  case Pred(X) of
                      true -> {[X | Trues], Falses};
                      false -> {Trues, [X | Falses]}
                  end
          end,
          {[], []},
          List).
